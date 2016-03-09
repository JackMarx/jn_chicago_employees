require "jn_chicago_employees/version"
require 'unirest'

module JnChicagoEmployees
  class Employee

   attr_reader :job_title, :department, :name, :salary

   def initialize(employee_api_info)
      @job_title = employee_api_info["job_titles"]
      @department = employee_api_info["department"]
      @name = employee_api_info["name"]
      @salary = employee_api_info["employee_annual_salary"].to_i
    end

    def self.all
      api_array = Unirest.get('https://data.cityofchicago.org/resource/xzkq-xp2w.json').body
      create_employees(api_array)
    end

    def self.search(search_keyword)
      api_array = Unirest.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json?$q=#{search_keyword}").body
      create_employees(api_array)
    end

    def self.create_employees(api_array)
      employees = []
      api_array.each do |employee_info|
        employees << Employee.new(employee_info)
      end
      employees
    end

    private_class_method :create_employees
  end
end
