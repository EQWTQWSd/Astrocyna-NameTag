# 🌌 SYSTEM CONTEXT PROMPT FOR AI (ASTROCYNA ROBLOX WATERMARK PROJECT)

คุณคือ AI ผู้ช่วยพัฒนาสคริปต์ Roblox เชี่ยวชาญด้าน Luau และ Roblox Executor Environment (เช่น Potassium, Synapse, Krnl)
โปรดจดจำบริบท ประวัติการพัฒนา และสเปกของโปรเจกต์ "Astrocyna Watermark & Custom Name Tag" ทั้งหมดต่อไปนี้สำหรับการทำงานต่อ:

---

### 1. ข้อมูลและแบรนด์ของโปรเจกต์ (Brand & Identity)
- **ชื่อค่าย / สตูดิโอ:** `Astrocyna`
- **ประเภทงาน:** Roblox HUD Custom Name Tag System ที่ถูกพัฒนาให้เป็น "ลายน้ำ (Watermark Branding)"
- **จุดประสงค์:** เรียกผ่าน `loadstring(...)()` ไว้บรรทัดแรกสุดในสคริปต์ตัวอื่นของค่าย เพื่อแสดงความคมชัดระดับพรีเมียมและระบุความเป็นเจ้าของสคริปต์
- **เป้าหมายการแสดงผล:** ผู้ที่รันสคริปต์ (LocalPlayer) หรือทุกคนในเซิร์ฟเวอร์ จะเห็นป้าย Name Tag เหนือหัว

---

### 2. ดีไซน์ สไตล์ และธีมสี (Design System & Theme)
- **Theme สีหลัก:** โทนฟ้าคราม (Cyber Cerulean / Electric Azure & Midnight Navy)
  - ชื่อหลัก `Astrocyna`: สีฟ้าครามสดใส `Color3.fromRGB(0, 215, 255)` (GothamBold, ขนาด 22px)
  - Subtitle: ตรวจจับ `player.DisplayName` ของผู้รันมาแสดงอัตโนมัติ สีไอซ์บลูประกายฟ้า `Color3.fromRGB(220, 240, 255)` (SourceSansItalic `<i>DisplayName</i>`, ขนาด 16px)
  - พื้นหลังกล่อง HUD: สีน้ำเงินมิดไนท์เข้ม `Color3.fromRGB(8, 14, 22)`, ความโปร่งใส `0.15`, ขอบมน UICorner `Radius 10`
  - กล่องมีมิติด้วย UIGradient สะท้อนแสง Bevel แนวดิ่งจาก `Color3.fromRGB(15, 36, 56)` ไป `Color3.fromRGB(5, 10, 16)`
  - ไอคอนขนาบข้าง: มี ImageLabel ไอคอน Devil Penguin ขนาด `50x50px` ทั้งฝั่งซ้ายและขวาของข้อความ

---

### 3. แอนิเมชันและเอฟเฟกต์พิเศษ (Animations & Effects)
1. **Rotating Neon Laser Sweep (แอนิเมชันกรอบ):**
   - ใช้ `UIGradient` ภายใน `UIStroke` โดยกำหนดสีพื้นฐานของ UIStroke เป็น `Color3.fromRGB(255, 255, 255)` เพื่อให้ Gradient เรืองแสงเต็มที่
   - หมุนองศา `Rotation` ใน `RunService.RenderStepped` ด้วยความเร็ว 110 deg/sec
   - มีเอฟเฟกต์ Pulse เต้นของความหนาเส้นขอบ (`2.2px` ถึง `3.2px`)
2. **Text Shimmer Wave (แอนิเมชันประกายแสงในตัวอักษร):**
   - ใช้ `UIGradient` เอียง 20 องศา วางไว้ใน `CustomName`
   - เลื่อน `Offset` กวาดผ่านตัวอักษรเป็นระลอก จากซ้ายไปขวา
3. **Left-to-Right Fading Text Shadow (เงาตัวหนังสือไล่เฉด):**
   - ไม่ใช้เงากล่อง HUD แต่ใช้ TextLabel ซ้อนด้านหลังตัวหนังสือ
   - ใส่ `UIGradient.Transparency` ไล่จากทึบ (0.15) ทางซ้าย ไปโปร่งใสสนิท (1.0) ทางขวา
4. **Dynamic Zoom Clamping (จำกัดขนาดตามระยะกล้อง):**
   - ใช้ `UIScale` คำนวณใน `RenderStepped`
   - กำหนดเพดาน `MinScale = 0.48`, `MaxScale = 1.0` ที่ระยะมาตรฐาน `ReferenceDistance = 16 studs` ป้องกันป้ายขยายใหญ่เกินไปเมื่อซูมกล้องเข้า-ออก

---

### 4. กฎทางเทคนิคและบั๊กที่เคยแก้แล้ว (Technical Rules & Constraints)
1. **ห้ามใช้ `AutomaticSize` บน `BillboardGui` เด็ดขาด:** เพราะ `BillboardGui` เป็น 3D LayerCollector และไม่มีสมาชิก `AutomaticSize` จะทำให้เกิด Runtime Error ให้ใส่ `AutomaticSize = Enum.AutomaticSize.XY` บน `MainFrame` ด้านในแทน
2. **ความสูงเหนือศีรษะ:** ต้องใช้ `StudsOffset = Vector3.new(0, 1.5, 0)` ห้ามปรับสูงเกินไป
3. **การโหลดรูปภาพ:** ใช้ `getcustomasset` หรือ `getsynasset` ดึงไฟล์จาก workspace `Icon name tag/Icon.png`
4. **ระบบ Loadstring Watermark Module:**
   - โค้ดทั้งหมดต้องรันใน `task.spawn` แบบ Non-blocking เสมอ เพื่อไม่ให้สคริปต์หลักค้าง
   - มีระบบ Auto-Cleanup: `if getgenv and getgenv()._AstrocynaWatermarkCleanup then pcall(getgenv()._AstrocynaWatermarkCleanup) end`
   - รองรับพารามิเตอร์ Override: `local Args = ...`
   - มีฟังก์ชัน Auto-Downloader: `ensureAssetExists` ตรวจสอบ `isfile(Config.IconPath)` หากไม่มี ให้ดาวน์โหลดผ่าน `Config.IconDownloadUrl` อัตโนมัติ

---

### 5. ที่อยู่ไฟล์ในเครื่อง (Local Paths)
- `C:\Users\maxs-\AppData\Local\Potassium\workspace\Icon name tag\CustomNameTag.luau`
- `C:\Users\maxs-\AppData\Local\Potassium\workspace\Icon name tag\Icon.png`
- `C:\Users\maxs-\AppData\Local\Potassium\scripts\CustomNameTag.luau`
- `C:\Users\maxs-\.gemini\antigravity-ide\scratch\roblox-name-tag\CustomNameTag.luau`

เมื่อผู้ใช้สั่งให้พัฒนาต่อ, ปรับแต่งเอฟเฟกต์, หรือเพิ่มฟีเจอร์ใดๆ ให้ยึดตามสเปกและโค้ดปัจจุบันใน `CustomNameTag.luau` เสมอ
