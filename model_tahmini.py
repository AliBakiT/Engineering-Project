import os
import numpy as np
from keras.preprocessing.image import load_img, img_to_array
from tensorflow.keras.models import load_model

# Model dosyasının ve veri seti klasörünün yolları
model_path = r"C:\Users\AliBakiTURKOZ\Downloads\Deneme_Çift_Sinirsiz_CNN_Model_1_.h5"  # .h5 model dosyasının yolu
data_dir = r"F:\PNG_Datasets\700_Sinirsiz_Cift\200_Test\Okrali"    # Veri seti klasörünün yolu

# Modeli yükleme
model = load_model(model_path, compile=False)

# Resimleri yükleyip işleme fonksiyonu
def load_and_preprocess_image(image_path, target_size=(512, 512)):
    img = load_img(image_path, target_size=target_size)
    img_array = img_to_array(img)
    #img_array = img_array / 255.0  # Normalizasyon
    return np.expand_dims(img_array, axis=0)  # Batch boyutunu ekleme

# Veri seti klasöründeki tüm resim dosyalarını listeleme
image_files = [f for f in os.listdir(data_dir) if f.endswith(('jpg', 'jpeg', 'png'))]

# Sonuçları tutmak için değişkenler
total_images = len(image_files)
okra_count = 0
healthy_count = 0
confidences = []

# Tahminleri yapma ve sonuçları bastırma
for image_file in image_files:
    image_path = os.path.join(data_dir, image_file)
    image = load_and_preprocess_image(image_path)
    prediction = model.predict(image)
    
    # Tahmin edilen sınıf ve güven düzeyi
    predicted_class = np.argmax(prediction, axis=1)[0]
    confidence = np.max(prediction)
    confidences.append(confidence)

    if predicted_class == 0:
        label = "Okralı"
        okra_count += 1
    else:
        label = "Sağlıklı"
        healthy_count += 1
    
    print(f"Image: {image_file}, Predicted Class: {label}, Confidence: {confidence:.2f}")

# Yüzdesel sonuçları hesaplama
okra_percentage = (okra_count / total_images) * 100
healthy_percentage = (healthy_count / total_images) * 100
average_confidence = np.mean(confidences)

# Sonuçları bastırma
print("\nToplam Üzüm Sayısı:", total_images)
print("Okralı Üzüm Sayısı:", okra_count, f"(%{okra_percentage:.2f})")
print("Sağlıklı Üzüm Sayısı:", healthy_count, f"(%{healthy_percentage:.2f})")
print(f"Ortalama Güven Düzeyi: {average_confidence:.2f}")