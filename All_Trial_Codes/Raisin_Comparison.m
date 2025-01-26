% Temiz Üzüm Verilerini oku
t_abs_data1 = csvread("C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\DLP NIR Scan Nano\Kuru Üzüm\Temiz Kuru Üzüm\Column 1_032047_20240229_161159_a.csv", 1, 0); % İlk satır başlıklar olduğu için 1, 0
t_int_data1 = csvread("C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\DLP NIR Scan Nano\Kuru Üzüm\Temiz Kuru Üzüm\Column 1_032047_20240229_161159_i.csv", 1, 0); % İlk satır başlıklar olduğu için 1, 0
t_ref_data1 = csvread("C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\DLP NIR Scan Nano\Kuru Üzüm\Temiz Kuru Üzüm\Column 1_032047_20240229_161159_r.csv", 1, 0); % İlk satır başlıklar olduğu için 1, 0

t_abs_data2 = csvread("C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\DLP NIR Scan Nano\Kuru Üzüm\Temiz Kuru Üzüm\Column 1_032046_20240229_161154_a.csv", 1, 0); % İlk satır başlıklar olduğu için 1, 0
t_int_data2 = csvread("C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\DLP NIR Scan Nano\Kuru Üzüm\Temiz Kuru Üzüm\Column 1_032046_20240229_161154_i.csv", 1, 0); % İlk satır başlıklar olduğu için 1, 0
t_ref_data2 = csvread("C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\DLP NIR Scan Nano\Kuru Üzüm\Temiz Kuru Üzüm\Column 1_032046_20240229_161154_r.csv", 1, 0); % İlk satır başlıklar olduğu için 1, 0

t_abs_data3 = csvread("C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\DLP NIR Scan Nano\Kuru Üzüm\Temiz Kuru Üzüm\Column 1_032045_20240229_161147_a.csv", 1, 0); % İlk satır başlıklar olduğu için 1, 0
t_int_data3 = csvread("C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\DLP NIR Scan Nano\Kuru Üzüm\Temiz Kuru Üzüm\Column 1_032045_20240229_161147_i.csv", 1, 0); % İlk satır başlıklar olduğu için 1, 0
t_ref_data3 = csvread("C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\DLP NIR Scan Nano\Kuru Üzüm\Temiz Kuru Üzüm\Column 1_032045_20240229_161147_r.csv", 1, 0); % İlk satır başlıklar olduğu için 1, 0

% Kirli Üzüm Verilerini Oku
Ota_abs_data1 = csvread("C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\DLP NIR Scan Nano\Kuru Üzüm\OTAlı Kuru Üzüm\Column 1_032043_20240229_161112_a.csv", 1, 0); % İlk satır başlıklar olduğu için 1, 0
Ota_int_data1 = csvread("C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\DLP NIR Scan Nano\Kuru Üzüm\OTAlı Kuru Üzüm\Column 1_032043_20240229_161112_i.csv", 1, 0); % İlk satır başlıklar olduğu için 1, 0
Ota_ref_data1 = csvread("C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\DLP NIR Scan Nano\Kuru Üzüm\OTAlı Kuru Üzüm\Column 1_032043_20240229_161112_r.csv", 1, 0); % İlk satır başlıklar olduğu için 1, 0

Ota_abs_data2 = csvread("C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\DLP NIR Scan Nano\Kuru Üzüm\OTAlı Kuru Üzüm\Column 1_032042_20240229_161104_a.csv", 1, 0); % İlk satır başlıklar olduğu için 1, 0
Ota_int_data2 = csvread("C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\DLP NIR Scan Nano\Kuru Üzüm\OTAlı Kuru Üzüm\Column 1_032042_20240229_161104_i.csv", 1, 0); % İlk satır başlıklar olduğu için 1, 0
Ota_ref_data2 = csvread("C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\DLP NIR Scan Nano\Kuru Üzüm\OTAlı Kuru Üzüm\Column 1_032042_20240229_161104_r.csv", 1, 0); % İlk satır başlıklar olduğu için 1, 0

Ota_abs_data3 = csvread("C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\DLP NIR Scan Nano\Kuru Üzüm\OTAlı Kuru Üzüm\Column 1_032041_20240229_161056_a.csv", 1, 0); % İlk satır başlıklar olduğu için 1, 0
Ota_int_data3 = csvread("C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\DLP NIR Scan Nano\Kuru Üzüm\OTAlı Kuru Üzüm\Column 1_032041_20240229_161056_i.csv", 1, 0); % İlk satır başlıklar olduğu için 1, 0
Ota_ref_data3 = csvread("C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\DLP NIR Scan Nano\Kuru Üzüm\OTAlı Kuru Üzüm\Column 1_032041_20240229_161056_r.csv", 1, 0); % İlk satır başlıklar olduğu için 1, 0

% Verileri ayır
t_wavelength1 = t_abs_data1(:, 1); % Wavelength sütunu
t_absorbance1 = t_abs_data1(:, 2); % Absorbance sütunu
t_reflectance1 = t_ref_data1(:, 2); % Reflectance sütunu
t_intensity1 = t_int_data1(:, 2); % Intensity sütunu

t_wavelength2 = t_abs_data2(:, 1); % Wavelength sütunu
t_absorbance2 = t_abs_data2(:, 2); % Absorbance sütunu
t_reflectance2 = t_ref_data2(:, 2); % Reflectance sütunu
t_intensity2 = t_int_data2(:, 2); % Intensity sütunu

t_wavelength3 = t_abs_data3(:, 1); % Wavelength sütunu
t_absorbance3 = t_abs_data3(:, 2); % Absorbance sütunu
t_reflectance3 = t_ref_data3(:, 2); % Reflectance sütunu
t_intensity3 = t_int_data3(:, 2); % Intensity sütunu

% OTA'lı Veri Sütunlarını Ayır
Ota_wavelength1 = Ota_abs_data1(:, 1); % Wavelength sütunu
Ota_absorbance1 = Ota_abs_data1(:, 2); % Absorbance sütunu
Ota_reflectance1 = Ota_ref_data1(:, 2); % Reflectance sütunu
Ota_intensity1 = Ota_int_data1(:, 2); % Intensity sütunu

Ota_wavelength2 = Ota_abs_data2(:, 1); % Wavelength sütunu
Ota_absorbance2 = Ota_abs_data2(:, 2); % Absorbance sütunu
Ota_reflectance2 = Ota_ref_data2(:, 2); % Reflectance sütunu
Ota_intensity2 = Ota_int_data2(:, 2); % Intensity sütunu

Ota_wavelength3 = Ota_abs_data3(:, 1); % Wavelength sütunu
Ota_absorbance3 = Ota_abs_data3(:, 2); % Absorbance sütunu
Ota_reflectance3 = Ota_ref_data3(:, 2); % Reflectance sütunu
Ota_intensity3 = Ota_int_data3(:, 2); % Intensity sütunu

% Grafikleri çiz
figure;

% Temiz üzüm grafikleri
subplot(3, 2, 1);
plot(t_wavelength1, t_absorbance1, '-b', 'LineWidth', 2);
hold on;
plot(t_wavelength2, t_absorbance2, '-r', 'LineWidth', 2);
plot(t_wavelength3, t_absorbance3, '-g', 'LineWidth', 2);
xlabel('Wavelength (nm)');
ylabel('Absorbance (AU)');
title('Normal Raisin Absorbance');
grid on;
legend('Data1', 'Data2', 'Data3');

subplot(3, 2, 3);
plot(t_wavelength1, t_intensity1, '-b', 'LineWidth', 2);
hold on;
plot(t_wavelength2, t_intensity2, '-r', 'LineWidth', 2);
plot(t_wavelength3, t_intensity3, '-g', 'LineWidth', 2);
xlabel('Wavelength (nm)');
ylabel('Intensity');
title('Normal Raisin Intensity');
grid on;

subplot(3, 2, 5);
plot(t_wavelength1, t_reflectance1, '-b', 'LineWidth', 2);
hold on;
plot(t_wavelength2, t_reflectance2, '-r', 'LineWidth', 2);
plot(t_wavelength3, t_reflectance3, '-g', 'LineWidth', 2);
xlabel('Wavelength (nm)');
ylabel('Reflectance');
title('Normal Raisin Reflectance');
grid on;

% Kirli üzüm grafikleri
subplot(3, 2, 2);
plot(Ota_wavelength1, Ota_absorbance1, '-b', 'LineWidth', 2);
hold on;
plot(Ota_wavelength2, Ota_absorbance2, '-r', 'LineWidth', 2);
plot(Ota_wavelength3, Ota_absorbance3, '-g', 'LineWidth', 2);
xlabel('Wavelength (nm)');
ylabel('Absorbance (AU)');
title('Ota Raisin Absorbance');
grid on;

subplot(3, 2, 4);
plot(Ota_wavelength1, Ota_intensity1, '-b', 'LineWidth', 2);
hold on;
plot(Ota_wavelength2, Ota_intensity2, '-r', 'LineWidth', 2);
plot(Ota_wavelength3, Ota_intensity3, '-g', 'LineWidth', 2);
xlabel('Wavelength (nm)');
ylabel('Intensity');
title('Ota Raisin Intensity');
grid on;

subplot(3, 2, 6);
plot(Ota_wavelength1, Ota_reflectance1, '-b', 'LineWidth', 2);
hold on;
plot(Ota_wavelength2, Ota_reflectance2, '-r', 'LineWidth', 2);
plot(Ota_wavelength3, Ota_reflectance3, '-g', 'LineWidth', 2);
xlabel('Wavelength (nm)');
ylabel('Reflectance');
title('Ota Raisin Reflectance');
grid on;
