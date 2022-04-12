SELECT Satis.IsciId, Satis.MehsulId, Mehsul.Alis_Qiymeti,Mehsul.Satis_Qiymeti FROM Satis
INNER JOIN Mehsul
ON
Mehsul.Id=Satis.Id

SELECT AVG(Mehsul.Satis_Qiymeti) FROM Mehsul


