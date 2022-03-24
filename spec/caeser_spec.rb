require './ceasar-cipher'

describe 'cipher tests' do
  it 'can rotate a single letter' do
    expect(ceasar_cipher('a', 1)).to eql('b')
  end

  it 'can rotate a single letter with a negative number' do
    expect(ceasar_cipher('a', -1)).to eql('z')
  end

  it 'can rotate a full word' do
    expect(ceasar_cipher('Adam', 1)).to eql('Bebn')
  end

  it 'can rotate a sentence, ignoring spaces and non letter characters' do
    expect(ceasar_cipher('aaa a aam-=_√©ƒaab va. a', 1)).to eql('bbb b bbn-=_√©ƒbbc wb. b')
  end
end
