# Identicon

## Description

This is an Identicon Generator app made with elixir code.

Here is the spell: takes a prompt, uses the module `crypto` to generate a hash, lists it, picks a color, mirrors it, chunks the hash, builds a simetrical grid and finally prints and saves a .png with the actual identicon.

## How to use it?

First of all, this wil run inside an elixir interactive shell, so just run `$ iex -S mix`

Once running just call the app module `Identicon` followed by the function `.main`


```iex(1)> Identicon.main("YourRandomString")
:ok
iex(2)>
```

You'll get a .png image visible in your main folder.

That's pretty much it. 
Try different prompts and have fun. 

# UTF-8 Bug

If you are using a Windows system, you may have some issues printing or generaly processing UTF-8 characters inside most of your terminals.

Although the Phoenix hexdocs claims that  characters encoded for Unicode UTF-8 are displayed the same as ASCI, it fails in this task on Windows environments.

Check this quick guide to set up Elixir and Phoenix, inside a virtual Ubuntu machine, and just use a `wsl` terminal to interact with it inside your code editor and get rid of this issue in a few simple steps.

https://github.com/JosePamplona/UTF8-terminal-for-Windows


```
## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `identicon` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:identicon, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/identicon>.

