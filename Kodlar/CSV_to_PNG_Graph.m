% Veri klasörü yolu
klasor_yolu = "C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\30_Data_40_228_Blackbox_Factory\20_352\Okralı";

% Tüm CSV dosyalarını oku ve birleştir
dosya_listesi = dir(fullfile(klasor_yolu, '*.csv')); % Klasördeki tüm CSV dosyalarını listele
for i = 1:numel(dosya_listesi)
    % Veriyi oku
    dosya_adi = fullfile(klasor_yolu, dosya_listesi(i).name);
    veri = csvread(dosya_adi, 1, 0); % İlk satır başlıklar olduğu için 1, 0
    
    % Veriyi sütunlara ayır
    wavelength = veri(:, 1); % Wavelength sütunu
    absorbance = veri(:, 2); % Absorbance sütunu

    % Grafiği çiz
    figure('Visible', 'off'); % Grafik ekranda gösterme
    plot(wavelength, absorbance, '-b', 'LineWidth', 2);
    xlabel('Wavelength (nm)');
    ylabel('Absorbance (AU)');
    title('Kuru Üzüm Absorbance');
    grid on;


    % Grafiği kaydet
    [~, dosya_adi, ~] = fileparts(dosya_listesi(i).name); % Dosya adını al
    kaydetme_yolu = fullfile("C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\Raisin_Graph\20_352\Okralı", [dosya_adi '.png']); % PNG olarak kaydet
    saveas(gcf, kaydetme_yolu);
end

