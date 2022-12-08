function mse=xyj_mse(imgA,imgB,whether_rgb)
    sum = double(0);
    if whether_rgb == false
        num_img_rows = size(imgA,1);
        num_img_cols = size(imgA,2);
        for y=1:num_img_rows
            for x=1:num_img_cols
                sum = double(sum)+(double(imgA(x,y))-double(imgB(x,y)))*(double(imgA(x,y))-double(imgB(x,y)));
            end
        end
        disp(sum)
        mse = sum/(num_img_rows*num_img_cols);
    else
        num_img_rows = size(imgA,1);
        num_img_cols = size(imgA,2);
        num_img_channels = size(imgA,3);
        for y=1:num_img_rows
            for x=1:num_img_cols
                for z=1:num_img_channels
                    sum = sum+(double(imgA(x,y,z))-double(imgB(x,y,z)))*(double(imgA(x,y,z))-double(imgB(x,y,z)));
                end
            end
        end
        mse = sum/(num_img_rows*num_img_cols*num_img_channels);
    end
 
