-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('book_author', 'book_publisher', 'book_genre', 'book_publisherwebsite', 'book_published_date', 'book_price', 'book_saleprice', 'book_isbn');
DELETE FROM wp_usermeta WHERE meta_key IN ('book_author', 'book_publisher', 'book_genre', 'book_publisherwebsite', 'book_published_date', 'book_price', 'book_saleprice', 'book_isbn');
DELETE FROM wp_termmeta WHERE meta_key IN ('book_author', 'book_publisher', 'book_genre', 'book_publisherwebsite', 'book_published_date', 'book_price', 'book_saleprice', 'book_isbn');
DELETE FROM wp_commentmeta WHERE meta_key IN ('book_author', 'book_publisher', 'book_genre', 'book_publisherwebsite', 'book_published_date', 'book_price', 'book_saleprice', 'book_isbn');

