# 🚨 WAC Detection System

Detection system designed to identify various suspicious behaviors related to **speedhacks**, **teleportations**, and **physical manipulations** in Roblox.

## 🪛 Installation
### 1. Download WAC (the anti-cheat)
### 2. Drag and drop `Anticheat.lua` into `ServerScriptService` -> `Script`
### 3. Drag and drop `WACConfig` into `ServerScriptService` -> `ModuleScript`
### 4. Configure WAC if necessary

---

## 🏃‍♂️ Abnormal Movement (Speed & Dash)

| Exploit            | Status       | Description                                                              |
|--------------------|--------------|--------------------------------------------------------------------------|
| WalkSpeed          | ✅ Enabled    | Direct modification of the player's movement speed.                      |
| Velocity Injection | ✅ Enabled    | Manually adding velocity to the character.                               |
| Speed Oscillation  | ✅ Enabled    | Rapid and constant speed variation to bypass detection.                  |
| Reverse Speed      | ✅ Enabled    | Fast backward movement by reversing direction.                           |
| SlowMo             | ⏳ Coming Soon| Intentional slowdown to manipulate movement mechanics.                   |

---

## 🚀 Forced Movement (Push, Slide, Dash)

| Exploit            | Status       | Description                                                              |
|--------------------|--------------|--------------------------------------------------------------------------|
| BodyVelocity Force | ✅ Enabled    | Forced movement by applying a BodyVelocity to the character.             |
| Physics Push       | ✅ Enabled    | Applying physical force to push the player.                              |
| Slide Boost        | ✅ Enabled    | Fast ground-level sliding to gain speed.                                 |
| Loop Jump (Dash)   | ✅ Enabled    | Repeating jumps and forward impulses.                                    |
| Spam Dash          | ⏳ Coming Soon| Rapid dash sequences simulating a speed boost.                           |

---

## ✨ Teleportation & Glitch

| Exploit            | Status       | Description                                                              |
|--------------------|--------------|--------------------------------------------------------------------------|
| Position Teleport  | ✅ Enabled    | Instantly teleporting the player to a new position.                      |
| CFrame Nudge       | ✅ Enabled    | Subtle movement by modifying the CFrame every frame.                     |
| Tween Movement     | ✅ Enabled    | Smooth movement via TweenService animations.                             |
| Gravity Exploit    | ⏳ Coming Soon| Altering gravity to jump higher or float.                                |
| Network Lag Skip   | ✅ Enabled    | Simulating lag to suddenly shift from one position to another.           |

---

## 🐸 Fly

| Exploit     | Status    | Description                                                  |
|-------------|-----------|--------------------------------------------------------------|
| Spam Jump   | ✅ Enabled| Repeated jumps preventing the player from touching the ground.|

---

## ✅ Legend

- ✅ **Enabled**: Functional and active detection.  
- ⏳ **Coming Soon**: Detection under development or testing.
