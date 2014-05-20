module HashAttr
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def hash_attr(*attrs)
      attrs.each do |attr|
        define_method attr.to_s do
          attribute_hash[attr]
        end

        define_method "#{attr.to_s}=" do |value|
          attribute_hash[attr] = value
        end
      end
    end
  end

  def attribute_hash
    @attribute_hash ||= {}
  end

  def attributes
    Hash[attribute_hash.map { |key, val| [key, __value(val)] }]
  end

  private
  def __value(object)
    hash_attr = lambda { |object| object.respond_to? :attribute_hash }
    hash = lambda { |object| object.respond_to? :keys }
    mappable = lambda { |object| object.respond_to? :map }

    case object
      when hash_attr then
        object.attributes
      when hash then
        Hash[object.map { |key, val| [key, __value(val)] }]
      when mappable then
        object.map { |val| __value(val) }
      else
        object
    end
  end
end