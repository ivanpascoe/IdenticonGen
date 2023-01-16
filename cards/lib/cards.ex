defmodule Cards do
  @moduledoc """
  Provides mthods fot creating and handling a deck of cards.
  """

  @doc """

  """
  def create_deck do
    values = ["Ace", "Two", "Tree"]
    suits = ["Spades", "Clubs", "Diamonds", "Herats"]

    for suit <-suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load(filename) do
    {status, binary} = File.read(filename)

    case status do
      :ok -> :erlang.binary_to_term(binary)
      :error -> "That file does not exist"
    end
  end

  def create_hand(hand_size) do
    Cards.create_deck()
    |> Cards.shuffle()
    |> Cards.deal(hand_size)
  end
#     #==> cards
# Generated cards app
# Generating docs...
# View "html" docs at "doc/index.html"
# View "epub" docs at "doc/cards.epub"
end
