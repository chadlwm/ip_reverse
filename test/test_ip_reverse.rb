#encoding: utf-8
require 'test/unit'
require 'ip_reverse'

class IpReverseTest < Test::Unit::TestCase

  def test_ip_reverse_success
    ip_reverse = IpReverse.reverse("119.178.225.92")
    p ip_reverse
    assert_equal ip_reverse['result']   , "success"
    assert_equal ip_reverse['country']  , "中国"   # => 国家/地区
    assert_equal ip_reverse['province'] , "山东省" # => 省份
    assert_equal ip_reverse['city']     , "菏泽市" # => 城市
    assert_equal ip_reverse['county']   , ""      # => 县
    assert_equal ip_reverse['isp']      , "联通"   # => 运营商
    assert_equal ip_reverse['area']     , "华东"   # => 

    ip_reverse = IpReverse.reverse("182.48.112.2")
    p ip_reverse
    assert_equal ip_reverse['result']   , "success"
    assert_equal ip_reverse['country']  , "中国"   # => 国家/地区
    assert_equal ip_reverse['province'] , "北京市" # => 省份
    assert_equal ip_reverse['city']     , "北京市" # => 城市
    assert_equal ip_reverse['county']   , "海淀区" # => 县
    assert_equal ip_reverse['isp']      , ""      # => 运营商
    assert_equal ip_reverse['area']     , "华北"   # => 
  end

  def test_ip_reverse_failed_with_invalid_ip
    ip_reverse = IpReverse.reverse("1234.5678.9abc.def0")
    p ip_reverse
    assert_equal ip_reverse['result']   , "failed"
    assert_equal ip_reverse['message']  , "invaild ip."   # => details info
  end
end