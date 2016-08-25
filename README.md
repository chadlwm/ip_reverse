# IP Reverse

IP address reverse, only for ipv4.

Keep it simple, stupid

The reverse result display as hash object, containing `country`, `province`, `city`, `county`, `isp`, `area`

## Installation

Add this line to your application's Gemfile:

    gem 'ip_reverse'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ip_reverse

## Usage

    ip_reverse = IpReverse.reverse("182.48.112.2")


结果

    {
        "result"=>"success",
        "country"=>"中国",
        "province"=>"北京市",
        "city"=>"北京市",
        "county"=>"海淀区",
        "isp"=>"",
        "area"=>"华北"
    }

    ip_reverse = IPReverse.reverse("119.178.225.92")
    ip_reverse['result'] # success or failed
    ip_reverse['message'] # if result is failed, this will give details info
    ip_reverse['country'] # => 国家:"中国"
    ip_reverse['province'] # => 省份:"山东省"
    ip_reverse['city'] # => 城市:"菏泽市"
    ip_reverse['county'] # => 县:""
    ip_reverse['isp'] # => 运营商:"联通"
    ip_reverse['area'] # => 地区:"华东"

## Accuracy &  Coverage
|地区|覆盖度|准确度|
| -------- | ------------------- | ---------------------|
| 国家| 100% | 100% |
| 省/直辖市/自治区 | 99.83% | 99.88% |
| 市 | 93.68% | 96.35% |
| 县 | 4.64% | 无统计数据 |
| 运营商 | 94.1% | 无统计数据 |

## Run Test

    rake test

## Contact

Name
:  chad lwm

Mail
:  [chad_lwm@hotmail.com](mailto:chad_lwm@hotmail.com)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request