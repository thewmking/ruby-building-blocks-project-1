require "caesar_cipher"

describe CaesarCipher do
  let(:cipher) { CaesarCipher.new }

  describe "caesar_cipher" do
    context 'given message and shift factor' do
      it 'converts to encrypted cipher' do
        expect(cipher.caesar_cipher("this is my message", 5)).to eql("ymnx nx rd rjxxflj")
      end
    end
  end
end
