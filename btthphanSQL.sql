SELECT baiviet.*FROM baiviet JOIN theloai ON baiviet.ma_tloai = theloai.ma_tloai WHERE theloai.ten_tloai= 'Nhac trữ tình';

SELECT baiviet.*FROM baiviet JOIN tacgia ON baiviet.ma_tgia = tacgia.ma_tgia WHERE tacgia.ten_tgia = 'Nhacvietplus';
 SELECT theloai.* FROM theloai LEFT JOIN baiviet ON theloai.ma_tloai = baiviet.ma_tloai WHERE baiviet.ma_tloai IS NULL;
SELECT baiviet.ma_bviet,baiviet.tieude,baiviet.ten_bhat,baiviet.ma_tgia,baiviet.ma_tloai,baiviet.ngayviet FROM `baiviet` WHERE 1;
SELECT theloai.ma_tloai,theloai.ten_tloai,COUNT(*) AS so_bai_viet FROM theloai
JOIN baiviet ON  theloai.ma_tloai= baiviet.ma_tloai
GROUP BY theloai.ma_tloai,theloai.ten_tloai
ORDER BY so_bai_viet DESC
LIMIT 1;
SELECT tacgia.ten_tgia,COUNT(*) AS so_bai_viet
FROM  tacgia
JOIN baiviet ON tacgia.ma_tgia = baiviet.ma_tgia
GROUP BY tacgia.ma_tgia
ORDER BY so_bai_viet DESC
LIMIT 2;

SELECT*
FROM baiviet
INNER JOIN tacgia  ON baiviet.ma_tgia = tacgia.ma_tgia
INNER JOIN theloai ON baiviet.ma_tloai = theloai.ma_tloai
WHERE baiviet.tieude LIKE '%Yêu%' OR baiviet.tieude LIKE '%Thương%' OR baiviet.tieude LIKE '%Anh%' OR baiviet.tieude LIKE '%Em%'
OR 
baiviet.ten_bhat LIKE '%Yêu%' OR baiviet.ten_bhat LIKE '%Thương%' OR baiviet.ten_bhat LIKE '%Anh%' OR baiviet.ten_bhat LIKE '%Em%';
