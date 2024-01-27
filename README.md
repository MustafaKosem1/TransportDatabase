# transportdatabase
7 farklı ulaşım türünü destekleyen bir database modeli.

Bu proje Introduction to Databases dersi kapsamında verilen kapsamlı bir dönem projesidir. 4 kişilik gruplar halinde yapılmıştır. Üyeler; Mustafa Kösem, Barash Mutlu, Sultan Delen, Özgür Zorlu'dur.

Bu projede 7 farklı ulaşım türünü aynı anda içeren bir database design'ı yapılmıştır. Ana amaç bu 7 türün tek bir database modeli üzerinde temsil edilebilmesi ve tek bir ulaşım kartı ile kullanılabilmesidir. Bunu yaparken şu aşamalar yapıldı:

-7 ulaşım türünün websiteleri data requirements için incelendi. Bu türler; THY, TCDD, IDO, IZBAN, MARTI, OTOBÜS ve ARAÇ KİRALAMA.

-Bu requirementlara uygun database design'ları EER kullanarak oluşturuldu.

-Oluşturulan bu EER'lar ortak yönleri bulunarak tek bir bütün halinde birleştirildi ve bu 7 ulaşımı içeren tek bir EER diagram'ı oluşturuldu.

-Oluşturulan bu EER diagram'ı mapping yöntemleri kullanılarak relational model'e dönüştürüldü.

-Son olarak da bu relational model Postgresql üzerinde implemente edildi.

-Ek olarak implementasyon kısmında birkaç trigger ve check constraint de yazıldı.

Burada paylaşılan dosya ve içerikler şunlardır; database modelinin EER diagram'ına ait bir görsel, mapping sonucu oluşan relational model tablolarının diagram'ına ait bir görsel ve implementasyon aşamasında yazılan SQL kodları.
