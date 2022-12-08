function Generate_negative_image(img_name,img_generation,img_name1)
    %generate negative image
    image_ori = readraw_color("Images/" + img_name);
    image_neg = rgb_negative(image_ori)
    
    % Compute and plot color histogram of original image
    % Change last parameter to true to see the channels on different plots
    plot_color_hist(image_ori, "RGB histogram of original " + img_name, false);

    % Compute and plot color histogram of negative image
    plot_color_hist(image_neg, "RGB histogram of negative " + img_name, false);
    
    figure('Name', img_name+"_negative", "NumberTitle", "off");
    imshow(image_neg);
    if img_generation==true
        writeraw_color(image_neg, "output/out_negative_" + img_name);
    else
        plot_color_hist(image_neg, "RGB histogram of original negative " + img_name1, false);
    end

