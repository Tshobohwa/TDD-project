require_relative '../solver'
describe Solver do
  before :each do
    @solver = Solver.new
  end
  context 'instance  of solver class' do
    it '#new' do
      expect(@solver).to be_instance_of Solver
    end
  end
  context '#factorial method check' do
    it 'should return  1 if factorial method take 0 or 1 ' do
      expect(@solver.factorial(0)).to eql(1)
      expect(@solver.factorial(1)).to eql(1)
    end
    it 'should raise an error if argument is negative' do
      expect { @solver.factorial(-1) }.to raise_error(ArgumentError)
    end
    it 'should return  120 if factorial method take 5 ' do
      expect(@solver.factorial(5)).to eql(120)
    end
  end

  context '#reverse method check' do
    it 'Should return the reversed string of hello -> olleh' do
      expect(@solver.reverse('hello')).to eql('olleh')
    end
  end

  context '#fizzbuzz method check' do
    it "Should return 'fizz' if argument is divisible by 3 and not by 5" do
      expect(@solver.fizzbuzz(6)).to eql('fizz')
    end
    it "Should return 'buzz' if argument is divisible by 5 and not by 3" do
      expect(@solver.fizzbuzz(10)).to eql('buzz')
    end
    it "Should return 'fizzbuzz' if argument is divisible by 3 and by 5" do
      expect(@solver.fizzbuzz(15)).to eql('fizzbuzz')
    end
    it 'Should return string of argument if argument is not divisible by 3 and by 5' do
      expect(@solver.fizzbuzz(7)).to eql('7')
    end
  end
end
