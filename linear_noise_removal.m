function img = linear_noise_removal(img_name, mask)
    rose = readraw("Images/" + img_name);
    
    filtered = conv(rose, mask);
    
    % Show images
    figure("Name", img_name + " before linear noise removal", "NumberTitle", "off");
    imshow(rose);
    figure("Name", img_name + " after linear noise removal", "NumberTitle", "off");
    imshow(filtered);
    img = filtered;
    writeraw(filtered, "output/out_linear_noise_removed_" + img_name);