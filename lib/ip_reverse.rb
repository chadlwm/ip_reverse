require "ip_reverse/version"
require 'rest-client'
require 'json'

module IpReverse
  class << self
    def reverse(ip)
    	response         = RestClient.get "http://ip.taobao.com/service/getIpInfo.php?ip=#{ip}"
    	ip_reverse       =  JSON.parse(response)
    	result           = {}
    	result["result"] = ip_reverse["code"] == 0 ? "success" : "failed"
    	
    	if result["result"] == "failed"
    		result["message"] = ip_reverse["data"] 
    	else
    		data              = ip_reverse["data"]
    		result["country"] = data["country"]
    		result["province"]= data["region"]
    		result["city"]    = data["city"]
    		result["county"]  = data["county"]
    		result["isp"]     = data["isp"]
    		result["area"]    = data["area"]
    	end
    	result
    end
  end
end
