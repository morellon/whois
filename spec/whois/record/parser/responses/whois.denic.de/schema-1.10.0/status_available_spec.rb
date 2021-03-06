# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.denic.de/schema-1.10.0/status_available.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/record/parser/whois.denic.de.rb'

describe Whois::Record::Parser::WhoisDenicDe, "status_available.expected" do

  before(:each) do
    file = fixture("responses", "whois.denic.de/schema-1.10.0/status_available.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#disclaimer" do
    it do
      @parser.disclaimer.should == "All the domain data that is visible in the whois search is protected by law. It is not permitted to use it for any purpose other than technical or administrative requirements associated with the operation of the Internet or in order to contact the domain holder over legal problems. You are not permitted to save it electronically or in any other way without DENIC's express written permission. It is prohibited, in particular, to use it for advertising or any similar purpose. By maintaining the connection you assure that you have a legitimate interest in the data and that you will only use it for the stated purposes. You are aware that DENIC maintains the right to initiate legal proceedings against you in the event of any breach of this assurance and to bar you from using its whois query."
    end
  end
  describe "#domain" do
    it do
      @parser.domain.should == nil
    end
  end
  describe "#domain_id" do
    it do
      lambda { @parser.domain_id }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#status" do
    it do
      @parser.status.should == :available
    end
  end
  describe "#available?" do
    it do
      @parser.available?.should == true
    end
  end
  describe "#registered?" do
    it do
      @parser.registered?.should == false
    end
  end
  describe "#created_on" do
    it do
      lambda { @parser.created_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#updated_on" do
    it do
      @parser.updated_on.should == nil
    end
  end
  describe "#expires_on" do
    it do
      lambda { @parser.expires_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#registrar" do
    it do
      @parser.registrar.should == nil
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should == []
    end
  end
  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should == []
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should == []
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should == []
    end
  end
end
