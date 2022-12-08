function centerwatermark_in_image(img_name, ctwtrmk_name, is_color)
    if is_color
        % Embed color watermark in color image
        building_color = readraw_color("Images/" + img_name);
        watermark_color = readraw_color("Images/" + ctwtrmk_name);
        
        embedded_color = watermark_image(building_color, watermark_color, true);
        
        figure('Name', "watermark_color", "NumberTitle", "off");
        imshow(embedded_color);
        
        writeraw_color(embedded_color, "output/out_watermark_color_" + img_name);
    else
        % Embed gray watermark in gray image
        building_color = readraw_color("./Images/" + img_name);
        building_gray = rgb_to_gray(building_color);
        watermark_gray = readraw("./Images/" + ctwtrmk_name);
        
        embedded_gray = watermark_image(building_gray, watermark_gray, false);
        
        figure('Name', "watermark_gray", "NumberTitle", "off");
        imshow(embedded_gray);
        
        writeraw(embedded_gray, "output/out_watermark_gray_" + img_name);
    end