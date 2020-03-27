% (a) Inverta as linhas da imagem.

figure, imshow("black_and_white.jpeg");

[image_read, map] = imread("black_and_white.jpeg");
[image_row, image_col] = size(image_read);

image_read_rol_rev = flip(image_read, 2);

imwrite(image_read_rol_rev, 'black_and_white_exerc2_a.jpeg');
figure, imshow("black_and_white_exerc2_a.jpeg");

% (b) Inverta as colunas da imagem.
image_read_col_rev = flipud(image_read);

imwrite(image_read_col_rev, 'black_and_white_exerc2_b.jpeg');
figure, imshow("black_and_white_exerc2_b.jpeg");

% (c) Reduza o tamanho da imagem pela metade.

image_read_half = imresize(image_read, 0.5);

imwrite(image_read_half, 'black_and_white_exerc2_c.jpeg');
figure, imshow("black_and_white_exerc2_c.jpeg");