defmodule Newchainserviceclient do
  @moduledoc """
  Documentation for `Newchainserviceclient`.
  """


  def ecdsaRecover(signature, message_hash, v) do
    #hex_signature = Base.encode16(signature)
    #hex_message_hash = Base.encode16(message_hash)
    hex_signature = signature
    hex_message_hash = message_hash
    HTTPoison.start
    response = HTTPoison.post(
      "http://localhost:3000/crypto/ecdsa-recover",
      "signature=#{hex_signature}&message_hash=#{hex_message_hash}&v=#{v}",
      [{"Content-Type", "application/x-www-form-urlencoded"}])
    # IO.inspect response
  end
end
