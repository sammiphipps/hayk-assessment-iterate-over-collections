require "pry"
class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

###Generate a list of strings with the name and size (name - size)
company_name_size_combined = companies.map{|company| company.name + " - " + company.size.to_s}
###Combine all the sizes with reduce 
company_combined_sizes = companies.map{|company| company.size}.reduce(:+)
#company_sizes.reduce(:+)
###Filter the list of show only companies over 100
company_over_100 = companies.select{|company| 
    if company.size > 100
        true
    end
}
###Find the company named Beta
beta_company = companies.select{|company| company.name.include?("Beta")}

###Find the largest company 
largest_company = companies.max{|company| company.size}

###Sort the companies from largest to smallest 
reverse_sorted_companies = companies.sort_by{|company| company.size}.reverse
binding.pry