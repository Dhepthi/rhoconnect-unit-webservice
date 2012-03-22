require 'savon'
class Unit < SourceAdapter
  def initialize(source) 
    @base = "http://www.webservicex.net/length.asmx?WSDL"
    super(source)
  end
 
  def login
    # TODO: Login to your data source here if necessary
  end
 
  def query(params=nil)
   @result = {}
  end
 
  def create(create_hash)
    # TODO: Create a new record in your backend data source
    raise "Please provide some code to create a single record in the backend data source using the create_hash"
  end
 
  def update(update_hash)
    # TODO: Update an existing record in your backend data source
    raise "Please provide some code to update a single record in the backend data source using the update_hash"
  end
 
  def delete(delete_hash)
    # TODO: write some code here if applicable
    # be sure to have a hash key and value for "object"
    # for now, we'll say that its OK to not have a delete operation
    # raise "Please provide some code to delete a single object in the backend application using the object_id"
  end

  def search(params)
   client = Savon::Client.new(@base)
   data= client.request :change_length_unit do
     soap.body = { 
          "LengthValue" => params["Value"],
          "fromLengthUnit" => params["From"],
          "toLengthUnit" => params["To"]
           }
     end
 puts "dsfffffffffffffffffffffffffffffffffffffff" 
    result = data.to_hash
   
    params["Value"] = result[:change_length_unit_response][:change_length_unit_result]
    params
 end
#[:change_length_unit_response][:change_length_unit_result]
 
  def logoff
    # TODO: Logout from the data source if necessary
  end
end