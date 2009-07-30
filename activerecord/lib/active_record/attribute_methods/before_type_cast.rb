module ActiveRecord
  module AttributeMethods
    module BeforeTypeCast
      extend ActiveSupport::Concern

      included do
        attribute_method_suffix "_before_type_cast"
      end

      def read_attribute_before_type_cast(attr_name)
        @attributes[attr_name]
      end

      private
        # Handle *_before_type_cast for method_missing.
        def attribute_before_type_cast(attribute_name)
          read_attribute_before_type_cast(attribute_name)
        end
    end
  end
end