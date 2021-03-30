# 06-ffs

   | **clk** | **d** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | up | 0 | 0 | 0 | No change |
   | up | 0 | 1 | 0 | Reset |
   | up | 1 | 0 | 1 | Set |
   | up | 1 | 1 | 1 | No change |

   | **clk** | **j** | **k** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-: | :-- |
   | up | 0 | 0 | 0 | 0 | No change |
   | up | 0 | 0 | 1 | 1 | No change |
   | up | 0 | 1 | 0 | 0 | Reset |
   | up | 0 | 1 | 1 | 0 | Reset |
   | up | 1 | 0 | 0 | 1 | Set |
   | up | 1 | 0 | 1 | 1 | Set |
   | up | 1 | 1 | 0 | 1 | Toggle |
   | up | 1 | 1 | 1 | 0 | Toggle |

   | **clk** | **t** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | up | 0 | 0 | 0 | No change |
   | up | 0 | 1 | 1 | No change |
   | up | 1 | 0 | 1 | Invert (Toggle) |
   | up | 1 | 1 | 0 | Invert (Toggle) |
