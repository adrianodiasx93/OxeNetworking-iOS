#
# Be sure to run `pod lib lint OxeNetworking.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'OxeNetworking'
    s.version          = '0.2.1'
    s.summary          = 'OxeNetworking is a Networking layer helper.'

    # This description is used swito generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!

    s.description      = <<-DESC
    TODO: Add long description of the pod here.
    DESC

    s.homepage         = 'https://github.com/adrianodiasx93/OxeNetworking-iOS'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { 
        :type => 'MIT', 
        #:file => 'LICENSE'
        :text => '
            Copyright (c) 2020 Adriano Dias <adrianodiasx93@gmail.com.br>

            Permission is hereby granted, free of charge, to any person obtaining a copy
            of this software and associated documentation files (the "Software"), to deal
            in the Software without restriction, including without limitation the rights
            to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
            copies of the Software, and to permit persons to whom the Software is
            furnished to do so, subject to the following conditions:

            The above copyright notice and this permission notice shall be included in
            all copies or substantial portions of the Software.

            THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
            IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
            FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
            AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
            LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
            OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
            THE SOFTWARE.
        '
    }
    s.author           = { 'Adriano Dias' => 'adrianodiasx93@gmail.com' }
    s.source           = { :git => 'https://github.com/adrianodiasx93/OxeNetworking-iOS.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '11.0'
    s.swift_version = '5.0'

    s.default_subspec = "OxeNetworking"

    s.subspec "OxeNetworking" do |ss|
        ss.source_files  = 'OxeNetworking/Sources/OxeNetworking/**/*'
        ss.ios.source_files  = 'Sources/OxeNetworking/**/*'
        s.dependency 'Moya', '~> 14.0'
        s.dependency 'SwiftyJSON', '~> 5.0'
    end

    s.subspec "RxOxeNetworking" do |ss|
        ss.source_files = 'OxeNetworking/Sources/RxOxeNetworking/**/*'
        ss.ios.source_files = 'Sources/RxOxeNetworking/**/*'
        ss.dependency 'OxeNetworking/OxeNetworking'
        ss.dependency 'RxSwift', '~> 5.0'
    end
end
