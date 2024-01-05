SELECT english_title AS "Most complex artwork of Hokusai" FROM views WHERE artist = "Hokusai" AND entropy = (SELECT MAX(entropy) FROM views WHERE artist = "Hokusai");
