local AES = require './AES'
local key = 0x68C756C6C186436C9EC51C174C32AE81761389B5E5904E30BA57CCD911290ECC
local plaintext = 'my secret, with extra length so that it is waaaaaaaaay over 16 bytes.'
local cyphertext = AES.ECB_256(AES.encrypt, key, plaintext)
local newtext = AES.ECB_256(AES.decrypt, key, cyphertext)
print(plaintext)
print(#cyphertext, cyphertext)
print(#newtext, newtext)