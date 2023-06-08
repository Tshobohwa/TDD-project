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
     expect(@solver.factorial(-1)).to raise_error(ArgumentError)
    end
    it 'should raise an error if argument is not a number' do
     expect(@solver.factorial("m")).to raise_error(ArgumentError)
    end
    it 'should raise an error if argument is not a integer' do
     expect(@solver.factorial(1.2)).to raise_error(ArgumentError)
    end
    it 'should return  120 if factorial method take 5 ' do
     expect(@solver.factorial(5)).to eql(120)
    end

   end



end