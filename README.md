![H2M](https://github.com/user-attachments/assets/42656b5e-5052-457d-a780-bc8f5fa22df3)

# h2m_gscs

# Install steps
Steps are super simple so I will keep it high level.

* Drop the scripts into `.\h2m-mod\user_scripts\mp\`.
* Some scripts require a DVAR to enable / disable, use where required.

# Which scripts are available?

# LowGravity

## Configuration
- **`lowGravity`**: Enables/disables low gravity.
  - `set lowGravity "1"` (enable) or `"0"` (disable).
- **`gravityValue`**: Sets gravity level (default: 800).
  - Example: `set gravityValue "400"` for reduced gravity.

```plaintext
set lowGravity "1"
set gravityValue "400"
```

# OneInTheChamber

## Configuration
- **`oneInTheChamber`**: Enables/disables oneInTheChamber.
  - `set oneInTheChamber "1"` (enable) or `"0"` (disable).
- **`sv_gametype`**: Sets default GameMode (default: FFA).
  - Example: `set gravityValue "dm"` Force FFA (Deathmatch).

```plaintext
set oneInTheChamber "1"
set sv_gametype "400"
```
# afkSpec

## Configuration
- **`specControl`**: Enables/disables afkspec.
  - `set specControl "1"` (enable) or `"0"` (disable).
- **`afkTime`**: Sets time before AKF.
  - Example: `set afkTime "10"` For 10 seconde before afk.

```plaintext
set specControl "1"`
set afkTime "10"
```
# PistolOnly

## Configuration
- **`pistolOnly`**: Enables/disables.
  - `set pistolOnly "1"` (enable) or `"0"` (disable).
- **`sv_gametype`**: Sets time before AKF.
  - Example: `set sv_gametype "dm"` Force FFA.

```plaintext
set pistolOnly "1"`
set sv_gametype "dm"
```

# JumpBoost

## Configuration
- **`jumpBoost`**: Enables/disables JumpBoost.
  - `set jumpBoost "1"` (enable) or `"0"` (disable).
- **`jumpHeight`**: Sets Jump height (default: 39).
  - Example: `set jumpHeight "65"` Jump height.

```plaintext
set jumpBoost "1"
set jumpHeight "65"
```
