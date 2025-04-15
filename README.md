# 🚨 WAC Detection System

Système de détection conçu pour repérer divers comportements suspects liés aux **speedhacks**, **téléportations** et **manipulations physiques** dans Roblox.

## 🪛 Installation
### 1. Telecharger WAC (l'anti cheat)
### 2. Glisser deposer Anticheat.lua dans ServerScriptService -> Script
### 3. Glisser deposer WACConfig dans ServerScriptService -> ModuleScript
### 4. Configurer WAC si nécessaire
---

## 🏃‍♂️ Mouvements anormaux (Speed & Dash)

| Exploit            | Statut    | Description                                                                 |
|--------------------|-----------|-----------------------------------------------------------------------------|
| WalkSpeed          | ✅ Activé | Modification directe de la vitesse de déplacement du joueur.               |
| Velocity Injection | ✅ Activé | Ajout manuel de vélocité au personnage.                                    |
| Speed Oscillation  | ✅ Activé | Variation rapide et constante de la vitesse pour éviter les détections.    |
| Reverse Speed      | ✅ Activé | Déplacement rapide vers l’arrière en inversant la direction.               |
| SlowMo             | ⏳ À venir| Ralentissement volontaire pour manipuler les mécaniques de mouvement.      |

---

## 🚀 Déplacement forcé (Push, Slide, Dash)

| Exploit            | Statut    | Description                                                                 |
|--------------------|-----------|-----------------------------------------------------------------------------|
| BodyVelocity Force | ✅ Activé | Déplacement forcé en appliquant une BodyVelocity au personnage.            |
| Physics Push       | ✅ Activé | Application d’une force physique pour pousser le joueur.                   |
| Slide Boost        | ✅ Activé | Glissade rapide au ras du sol pour gagner en vitesse.                      |
| Loop Jump (Dash)   | ✅ Activé | Enchaînement de sauts et d’impulsions vers l’avant.                        |
| Spam Dash          | ⏳ À venir| Séries rapides de dashs pour simuler un boost de vitesse.                 |

---

## ✨ Téléportation & Glitch

| Exploit            | Statut    | Description                                                                 |
|--------------------|-----------|-----------------------------------------------------------------------------|
| Position Teleport  | ✅ Activé | Téléportation instantanée du joueur vers une nouvelle position.            |
| CFrame Nudge       | ✅ Activé | Déplacement subtil en modifiant la CFrame à chaque frame.                  |
| Tween Movement     | ✅ Activé | Déplacement fluide par animation via TweenService.                         |
| Gravity Exploit    | ⏳ À venir| Altération de la gravité pour sauter plus haut ou flotter.                 |
| Network Lag Skip   | ✅ Activé | Simulation de lag pour passer brutalement d'une position à une autre.      |

---

## 🐸 Fly

| Exploit     | Statut    | Description                                                  |
|-------------|-----------|--------------------------------------------------------------|
| Spam Jump   | ✅ Activé | Sauts répétés empêchant le joueur de toucher le sol.         |

---

## ✅ Légende

- ✅ **Activé** : Détection fonctionnelle et en place.  
- ⏳ **À venir** : Détection en cours de développement ou test.
