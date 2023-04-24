require 'spec_helper'
require_relative '../caesar_cipher'

RSpec.describe 'Caesar Cipher Project' do

    describe 'alphabet Example' do
        it 'returns "fghijklmnopqrstuvwxyzabcde" when the string is "abcdefghijklmnopqrstuvwxyz" and the key is 5' do
            result = "fghijklmnopqrstuvwxyzabcde"
            string = "abcdefghijklmnopqrstuvwxyz"
            key = 5
            expect(caesar_cipher(string, key)).to eq result
          end
    end

    describe 'alphabet Example negative shift' do
        it 'returns "vwxyzabcdefghijklmnopqrstu" when the string is "abcdefghijklmnopqrstuvwxyz" and the key is -5' do
            result = "vwxyzabcdefghijklmnopqrstu"
            string = "abcdefghijklmnopqrstuvwxyz"
            key = -5
            expect(caesar_cipher(string, key)).to eq result
          end
    end

    describe 'alphabet Example zero shift' do
        it 'returns "abcdefghijklmnopqrstuvwxyz" when the string is "abcdefghijklmnopqrstuvwxyz" and the key is 0' do
            result = "abcdefghijklmnopqrstuvwxyz"
            string = "abcdefghijklmnopqrstuvwxyz"
            key = 0
            expect(caesar_cipher(string, key)).to eq result
          end
    end

    describe 'alphabet Example big shift' do
        it 'returns "yzabcdefghijklmnopqrstuvwx" when the string is "abcdefghijklmnopqrstuvwxyz" and the key is 50' do
            result = "yzabcdefghijklmnopqrstuvwx"
            string = "abcdefghijklmnopqrstuvwxyz"
            key = 50
            expect(caesar_cipher(string, key)).to eq result
          end
    end

    describe 'alphabet Example negative shift big shift' do
        it 'returns "cdefghijklmnopqrstuvwxyzab" when the string is "abcdefghijklmnopqrstuvwxyz" and the key is -50' do
            result = "cdefghijklmnopqrstuvwxyzab"
            string = "abcdefghijklmnopqrstuvwxyz"
            key = -50
            expect(caesar_cipher(string, key)).to eq result
          end
    end   

    describe 'alphabet with space' do
        it 'returns "fghi jklm nopq rstu vwxy zabc de" when the string is "abcd efgh ijkl mnop qrst uvwx yz" and the key is 5' do
            result = "fghi jklm nopq rstu vwxy zabc de"
            string = "abcd efgh ijkl mnop qrst uvwx yz"
            key = 5
            expect(caesar_cipher(string, key)).to eq result
          end
    end     

    describe 'number' do
        it 'returns "0123456789" when the string is "0123456789" and the key is 5' do
            result = "0123456789"
            string = "0123456789"
            key = 5
            expect(caesar_cipher(string, key)).to eq result
          end
    end  

    describe 'punctuation' do
        it 'returns "!#$%&()*+,-./:;<=>?@[\]^_`{|}~" when the string is "!#$%&()*+,-./:;<=>?@[\]^_`{|}~" and the key is 5' do
            result = "!#$%&()*+,-./:;<=>?@[\]^_`{|}~"
            string = "!#$%&()*+,-./:;<=>?@[\]^_`{|}~"
            key = 5
            expect(caesar_cipher(string, key)).to eq result
          end
    end  

    describe 'Caesar Cipher' do
        it 'returns "Bmfy f xywnsl!" when the string is "What a string!" and the key is 5' do
            result = "Bmfy f xywnsl!"
            string = "What a string!"
            key = 5
            expect(caesar_cipher(string, key)).to eq result
          end
    end
end