require 'spec_helper'
describe 'asterisk' do
  let :pre_condition do
    'class { "apt": }'
  end

  let :facts do
    {:lsbdistcodename => 'karmic'}
  end

  describe 'sources' do
    it { should contain_apt__add(
      "deb http://packages.asterisk.org/deb lucid main").with(
      "apt_name" => "digium")}

    it { should contain_apt__add(
      "deb-src http://packages.asterisk.org/deb lucid main").with(
      "apt_name" => "digum-src",
      "require" => "Apt::Add[deb http://packages.asterisk.org/deb lucid main]")}

    it { should contain_package(
      "asterisk-1.8").with(
      "ensure" => "installed",
      "require" => "Exec[apt-update-key]")}
  end

end
