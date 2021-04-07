require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe Command::Duplicates do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w{ duplicates }).should.be.instance_of Command::Duplicates
      end
    end
  end
end

