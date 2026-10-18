# 🌌 Astrocyna - Roblox Watermark & Custom Name Tag System

![Roblox](https://img.shields.io/badge/Roblox-Luau-blue?logo=roblox)
![License](https://img.shields.io/badge/Status-Active-brightgreen)
![Theme](https://img.shields.io/badge/Theme-Electric%20Cyan-00d7ff)

A sleek, premium HUD Watermark & Name Tag system designed for Roblox executor environments (Potassium, Synapse, etc.). Built as a non-blocking watermark module to brand and identify scripts created by **Astrocyna**.

---

## ⚡ Quick Start (Loadstring)

Add this single line at the very top of your Roblox script:

```lua
-- [Astrocyna Watermark Branding]
loadstring(game:HttpGet("https://raw.githubusercontent.com/EQWTQWSd/Astrocyna-NameTag/main/CustomNameTag.luau"))()
```

### 🛠️ Custom Parameter Override (Optional)
You can customize settings on a per-script basis by passing a configuration table:

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/EQWTQWSd/Astrocyna-NameTag/main/CustomNameTag.luau"))({
    Self = {
        CustomName = "Astrocyna Hub", -- Custom title
        NameColor = Color3.fromRGB(0, 240, 255),
    }
})
```

---

## ✨ Features
- 🚀 **Loadstring Ready:** Fully self-contained, runs in a background thread (`task.spawn`) without delaying your main script.
- 🔁 **Hot Reload & Anti-Duplication:** Automatically cleans up existing tags when re-executed.
- 📥 **Auto-Asset Downloader:** Automatically downloads `Icon.png` to the user's workspace if missing on their system.
- 🌈 **Rotating Neon Laser Sweep:** Smooth animated border sweep with dynamic thickness pulse.
- 💫 **Text Shimmer Wave:** Holographic light sheen running across the main text.
- 👤 **Dynamic Subtitle:** Automatically detects and displays the user's `DisplayName`.
- 📐 **Camera Zoom Clamping:** Dynamically clamps `UIScale` based on camera distance so the tag never blows up or blocks player vision.

---

## 📂 Repository Contents
- [`CustomNameTag.luau`](./CustomNameTag.luau) - The main watermark script.
- [`Icon.png`](./Icon.png) - Devil penguin branding icon asset.
- [`AI_CONTEXT_PROMPT.md`](./AI_CONTEXT_PROMPT.md) - System prompt and project specifications for AI assistants.

---

## 👤 Credits & Author
- **Studio / Brand:** Astrocyna
- **Developer:** Maxo Thai_LishRE (`thanaphonbxre@gmail.com`)
