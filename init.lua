IllusionMod = {
    nativefs = require "illusion_mod.nativefs",
    mod_dir = require("lovely").mod_dir .. "/Illusion/",
}

IllusionMod.image_data_or_path = function(asset)
    local path = IllusionMod.mod_dir .. asset.path
    local file_data, file_err = IllusionMod.nativefs.newFileData(path)
    if not file_data then
        print("nativefs.newFileData failed for " ..
        asset.name .. " at " .. path .. " falling back to " .. asset.path .. "\nInner error: " .. file_err)
        return asset.path
    end
    local image_data, image_err = love.image.newImageData(file_data)
    if not image_data then
        print("love.image.newImageData failed for " ..
        asset.name .. " at " .. path .. " falling back to " .. asset.path .. "\nInner error: " .. image_err)
        return asset.path
    end
    return image_data
end

IllusionMod.shader_text_or_path = function(asset)
    if not love.graphics.getSupported().shaderderivatives then
        print("shaderderivatives not supported according to lovegraphics.getSupported(), falling back to vanilla shaders")
        return asset.path
    end
    local path = IllusionMod.mod_dir .. asset.path
    local shader_text, err = IllusionMod.nativefs.read(path)
    if not shader_text then
        print("nativefs.read failed for " ..
        asset.name ..
        " at " ..
        path .. " falling back to " .. asset.path .. " (this is expected for some shaders)\nInner error: " .. err)
        return asset.path
    end
    return shader_text
end
