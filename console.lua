-- ======================== ПОИСК ВСЕГО ========================
print("=== 🔍 ПОИСК ОБЪЕКТОВ В DEATH BALL ===")

-- 1. Ищем мяч
print("\n=== ⚽ МЯЧ ===")
for _, v in pairs(workspace:GetDescendants()) do
    if v:IsA("BasePart") and (v.Name:lower():find("ball") or v.Name:lower():find("orb") or v.Name:lower():find("projectile")) then
        print("Найден: " .. v.Name .. " | Класс: " .. v.ClassName)
    end
end

-- 2. Ищем босса
print("\n=== 💀 БОСС ===")
for _, v in pairs(workspace:GetDescendants()) do
    if v:IsA("Model") and (v.Name:lower():find("boss") or v.Name:lower():find("dummy") or v.Name:lower():find("target")) then
        print("Найден: " .. v.Name)
    end
end

-- 3. Ищем игроков
print("\n=== 👤 ИГРОКИ ===")
for _, v in pairs(game:GetService("Players"):GetPlayers()) do
    print("Игрок: " .. v.Name .. " | Персонаж: " .. (v.Character and v.Character.Name or "нет"))
end

-- 4. Ищем RemoteEvents
print("\n=== 📡 REMOTE EVENTS ===")
for _, v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
    if v:IsA("RemoteEvent") or v:IsA("RemoteFunction") then
        print("Найден: " .. v.Name .. " | Путь: " .. v:GetFullName())
    end
end

-- 5. Ищем папки с визуалами (ауры, позы, скины)
print("\n=== 🎨 ВИЗУАЛЫ ===")
for _, v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
    if v:IsA("Folder") and (v.Name:lower():find("aura") or v.Name:lower():find("pose") or v.Name:lower():find("skin") or v.Name:lower():find("sword") or v.Name:lower():find("enchant")) then
        print("Папка: " .. v.Name .. " | Путь: " .. v:GetFullName())
    end
end

print("\n=== ✅ ПОИСК ЗАВЕРШЁН ===")
