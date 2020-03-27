% (a) Gray = 0, 3 · canalRed + 0, 59 · canalGreen + 0, 11 · canalBlue.

image_read_rgb = imread("flower.jpeg");
redChannel = image_read_rgb(:, :, 1);
greenChannel = image_read_rgb(:, :, 2);
blueChannel = image_read_rgb(:, :, 3);

% podemos juntar todas essas cores e formar a imagem original aplicando a
% equação acima
figure, imshow(cat(3, 0.3*redChannel, 0.59*greenChannel, 0.11*blueChannel));



% (b)

% O canal vermelho tem valores inferiores a 80
[image_row, image_col] = size(redChannel);
for i = 1:image_row
    for j = 1:image_col
        if(redChannel(i, j) > 80)
           redChannel(i, j) = 0;
        end
    end
end

% O canal verde tem valores superiores a 100
[image_row, image_col] = size(greenChannel);
for i = 1:image_row
    for j = 1:image_col
        if(greenChannel(i, j) < 100)
           greenChannel(i, j) = 0;
        end
    end
end

% O canal azul tem valores superiores a 100.
[image_row, image_col] = size(blueChannel);
for i = 1:image_row
    for j = 1:image_col
        if(blueChannel(i, j) < 100)
           blueChannel(i, j) = 0;
        end
    end
end

figure, imshow(cat(3, redChannel, greenChannel, blueChannel));

