import os
import numpy as np
import matplotlib.pyplot as plt
from sklearn.metrics import accuracy_score, log_loss
from keras.preprocessing.image import load_img, img_to_array
from keras.utils import to_categorical
from tensorflow.keras.models import load_model

# Okra ve normal klasörlerinin yolları
okra_klasoru = r"F:\PNG_Datasets\700_Sinirli_Cift\200_Test\Okrali"
normal_klasoru = r"F:\PNG_Datasets\700_Sinirli_Cift\200_Test\Saglikli"

# Verileri ve etiketleri depolamak için boş listeler
X = []
y = []

# Okra verilerini yükleme ve etiketleme
for dosya_adi in os.listdir(okra_klasoru):
    dosya_yolu = os.path.join(okra_klasoru, dosya_adi)
    img = load_img(dosya_yolu, target_size=(512, 512))
    img_array = img_to_array(img)
    X.append(img_array)
    y.append(0)  # Okra sınıfı

# Normal verilerini yükleme ve etiketleme
for dosya_adi in os.listdir(normal_klasoru):
    dosya_yolu = os.path.join(normal_klasoru, dosya_adi)
    img = load_img(dosya_yolu, target_size=(512, 512))
    img_array = img_to_array(img)
    X.append(img_array)
    y.append(1)  # Normal sınıfı

# Veriyi ve etiketleri Numpy dizilerine dönüştürme
X = np.array(X)
y = np.array(y)

# Verileri karıştırma
sirali_indeksler = np.arange(X.shape[0])
np.random.shuffle(sirali_indeksler)
X = X[sirali_indeksler]
y = y[sirali_indeksler]

# Modeli yükleyip verileri tahmin etme
model = load_model(r"C:\Users\AliBakiTURKOZ\OneDrive\Masaüstü\Engineering Project\REPORTS\Deneme_Çift_Sinirli_CNN_Model_15_%83.75, 0.29_.h5", compile = False)  # Kaydedilmiş modeli yükleme
predictions = model.predict(X)  # Verileri tahmin etme

# Gerçek etiketlerin ve tahminlerin hazırlanması
true_labels = y
true_labels_cat = to_categorical(true_labels, num_classes=2)  # Gerçek etiketlerin kategorik hale getirilmesi
pred_prob_cat = predictions  # Tahmin olasılıklarının hesaplanması

# Doğruluk oranını ve kaybı hesaplama
accuracy = accuracy_score(true_labels, np.argmax(predictions, axis=1))
loss = log_loss(true_labels_cat, pred_prob_cat)

print(f"Doğruluk Oranı: {accuracy}")
print(f"Kayıp: {loss}")

# Her aşamadaki tahmin ve gerçek etiketleri yazdırma
print("Tahminler ve Gerçek Etiketler:")
for i in range(len(true_labels)):
    tahmin = 'Okratoksinli' if np.argmax(predictions[i]) == 0 else 'Sağlıklı'
    gerçek_etiket = 'Okratoksinli' if true_labels[i] == 0 else 'Sağlıklı'
    print(f"Tahmin: {tahmin} - Gerçek Etiket: {gerçek_etiket}")

# Accuracy oranlarının yazdırılması
accuracy_list = [accuracy_score(true_labels[:i+1], np.argmax(predictions[:i+1], axis=1)) for i in range(len(true_labels))]
print("Her Aşamadaki Accuracy Oranları:")
for i, acc in enumerate(accuracy_list):
    print(f"Veri sayısı: {i+1}, Accuracy: {acc}")

# Loss ve accuracy grafiğinin çizdirilmesi
loss_list = []
mean_loss_list = []
for i in range(len(true_labels)):
    loss_list.append(log_loss(true_labels_cat[:i+1], pred_prob_cat[:i+1]))
    mean_loss_list.append(np.mean(loss_list))  # Tüm epochlar için loss ortalaması alınıyor

# Accuracy'lerin ortalamasını alalım
mean_accuracy_list = [np.mean(accuracy_list[:i+1]) for i in range(len(accuracy_list))]

plt.figure(figsize=(15, 5))
plt.subplot(1, 3, 1)
plt.plot(range(len(true_labels)), accuracy_list, marker='o', linestyle='-', label='Accuracy')
plt.title('Accuracy')
plt.xlabel('Veri Sayısı')
plt.ylabel('Accuracy')
plt.grid(True)
plt.legend()

plt.subplot(1, 3, 2)
plt.plot(range(len(true_labels)), mean_loss_list, marker='o', linestyle='-', label='Mean Loss')
plt.title('Mean Loss')
plt.xlabel('Veri Sayısı')
plt.ylabel('Loss')
plt.grid(True)
plt.legend()

plt.subplot(1, 3, 3)
plt.plot(range(len(true_labels)), mean_accuracy_list, marker='o', linestyle='-', color='orange', label='Mean Accuracy')
plt.title('Mean Accuracy')
plt.xlabel('Veri Sayısı')
plt.ylabel('Accuracy')
plt.grid(True)
plt.legend()

plt.tight_layout()
plt.show()
