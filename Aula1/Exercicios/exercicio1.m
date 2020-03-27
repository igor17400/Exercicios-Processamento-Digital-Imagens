% (a)Realize a leitura de uma imagem em escala de cinza utilizando a
% função imread( ).

[image_read, map] = imread("black_and_white.jpeg");
disp(image_read);

% (b) Mostre as dimensões da imagem a função size( ).

[image_row, image_col] = size(image_read);
disp("row:");
disp(image_row);
disp("column:");
disp(image_col);

% (c) Faça o display da imagem utilizando a função imshow( ).

figure, imshow("black_and_white.jpeg");


% (d) Binarize a imagem transformando os nı́iveis de cinza do intervalo
% [1,128] para 1 e o intervalo [129, 256] para 256. 

image_read_d = image_read;
for i = 1:image_row
    for j = 1:image_col
        if(image_read_d(i, j) <= 128)
           image_read_d(i, j) = 1;
        else
           image_read_d(i, j) = 256; 
        end
    end
end
imwrite(image_read_d, 'black_and_white_mod1.jpeg');
figure, imshow("black_and_white_mod1.jpeg");

% (e) Inverta os tons de cinza dentro do intervalo de 255 tons da imagem
% original.

image_read_e = image_read;
for i = 1:image_row
    for j = 1:image_col
        image_read_e(i, j) = 255 - image_read_e(i, j);
    end
end

% (f) Faça o display do resultado do item anterior.
imwrite(image_read_e, 'black_and_white_mod2.jpeg');
figure, imshow("black_and_white_mod2.jpeg");

% (g) Extra - Realizar o item C com os 3 canais de uma imagem RGB.

image_read_rgb = imread("flower.jpeg");
redChannel = image_read_rgb(:, :, 1);
greenChannel = image_read_rgb(:, :, 2);
blueChannel = image_read_rgb(:, :, 3);

figure, imshow(image_read_rgb);
figure, imshow(redChannel);
figure, imshow(greenChannel);
figure, imshow(blueChannel);
% podemos juntar todas essas cores e formar a imagem original
figure, imshow(cat(3, redChannel, greenChannel, blueChannel));





