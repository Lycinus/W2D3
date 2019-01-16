require "rspec"
require "TDDProj"

describe "#my_uniq" do 
    test_arr = [1,2,1,3,3]
    it "returns an array" do 
        expect(my_uniq(test_arr)).to be_a(Array)
    end
    it "will only accept array" do
        expect{my_uniq(1)}.to raise_error(Exception)
    end
    it "handles an empty array" do
        expect(my_uniq([])).to eq([])
    end
    it "removes duplicate values + right order" do
        expect(my_uniq(test_arr)).to eq([1,2,3])
    end
end

describe "#two_sum" do 
    test_arr = [-1, 0, 2, -2, 1]
    it "returns an array" do 
        expect(two_sum(test_arr)).to be_a(Array)
    end
    it "will only accept array" do
        expect{two_sum(1)}.to raise_error(Exception)
    end
    it "handles an empty array" do
        expect(two_sum([])).to eq([])
    end
    it "finds all pairs of positions where the elements at those positions sum to zero" do
        expect(two_sum(test_arr)).to eq([[0, 4], [2, 3]])
    end
end

describe "#my_transpose" do 
    
    square_arr=[[1, 2, 3],
                [4, 5, 6],
                [7, 8, 9]]

    transposed_arr = [[1, 4, 7],
                      [2, 5, 8],
                      [3, 6, 9]]  

    it "returns an array" do 
        expect(my_transpose(square_arr)).to be_a(Array)
    end
    it "will only accept array" do
        expect{my_transpose(1)}.to raise_error(Exception)
    end
    it "handles an empty array" do
        expect(my_transpose([])).to eq([])
    end
    it "returns a 2-D array of the right size" do
        expect(my_transpose(square_arr).length).to eq(square_arr[0].length)
    end
    it "returns the transposed matrix" do 
        expect(my_transpose(square_arr)).to eq(transposed_arr)
    end
end