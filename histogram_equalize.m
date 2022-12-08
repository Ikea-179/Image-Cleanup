function histogram_equalize(img_name,whether_load)
    if whether_load == true
        img = readraw("Images/" + img_name)
    else
        img = img_name
    end
    % Get histogram for image
    hist = xyj_hist(img);
    % Equalize the histogram of the image
    [equalized, transfer_fcn_X, transfer_fcn_Y] = histeq(img, hist);
    
    % Display image 
    figure("Name", img_name + " histogram equalized image", "NumberTitle", "off");
    imshow(equalized);
    % Display histogram
    newhist = xyj_hist(equalized);
    figure("Name", img_name + " histogram equalized histogram", "NumberTitle", "off");
    bar(newhist);
    xlabel('pixel value');
    ylabel('number pixels');
    
    % Plot transfer function
    figure("Name", ...
        img_name + " histogram equalization transfer function",...
        "NumberTitle", "off");
    plot(transfer_fcn_X, transfer_fcn_Y);
    xlabel('input pixel value');
    ylabel('output pixel value');
    
    writeraw(equalized, "output/out_histogram_equalized_" + img_name);