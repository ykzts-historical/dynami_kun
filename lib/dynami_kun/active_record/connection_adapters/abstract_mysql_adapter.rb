require 'active_record/connection_adapters/abstract_mysql_adapter'

module DynamiKun
  module AbstractMysqlAdapter
    def create_table(table_name, options = {})
      table_options = options.merge(options: 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC')
      super(table_name, table_options) do |td|
        yield td if block_given?
      end
    end
  end
end

ActiveRecord::ConnectionAdapters::AbstractMysqlAdapter.send(:prepend, DynamiKun::AbstractMysqlAdapter)
