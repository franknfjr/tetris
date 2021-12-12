defmodule Tetris.Tetromino do
  alias Tetris.Point

  defstruct shape: :l, rotation: 0, location: {5, 1}

  def new(options \\ []) do
    __struct__(options)
  end

  def new_random do
    new(shape: random_shape())
  end

  def right(tetro) do
    %{tetro | location: Point.right(tetro.location)}
  end

  def left(tetro) do
    %{tetro | location: Point.left(tetro.location)}
  end

  def down(tetro) do
    %{tetro | location: Point.down(tetro.location)}
  end

  def rotate(tetro) do
    %{tetro | rotation: rotate_degress(tetro.rotation)}
  end

  defp rotate_degress(270) do
    0
  end

  defp rotate_degress(n) do
    n + 90
  end

  defp random_shape do
    ~w(i j l o s t z)a
    |> Enum.random()
  end
end
