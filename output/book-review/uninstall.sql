-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('book_review_general', 'book_review_ratings', 'book_review_links', 'book_review_fields', 'book_review_advanced', 'book_review_version');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('book_review_archive_post', 'book_review_archive_title', 'book_review_isbn', 'book_review_title', 'book_review_series', 'book_review_author', 'book_review_genre', 'book_review_publisher', 'book_review_release_date', 'book_review_format', 'book_review_pages', 'book_review_source', 'book_review_cover_url', 'book_review_summary', 'book_review_rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('book_review_archive_post', 'book_review_archive_title', 'book_review_isbn', 'book_review_title', 'book_review_series', 'book_review_author', 'book_review_genre', 'book_review_publisher', 'book_review_release_date', 'book_review_format', 'book_review_pages', 'book_review_source', 'book_review_cover_url', 'book_review_summary', 'book_review_rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('book_review_archive_post', 'book_review_archive_title', 'book_review_isbn', 'book_review_title', 'book_review_series', 'book_review_author', 'book_review_genre', 'book_review_publisher', 'book_review_release_date', 'book_review_format', 'book_review_pages', 'book_review_source', 'book_review_cover_url', 'book_review_summary', 'book_review_rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('book_review_archive_post', 'book_review_archive_title', 'book_review_isbn', 'book_review_title', 'book_review_series', 'book_review_author', 'book_review_genre', 'book_review_publisher', 'book_review_release_date', 'book_review_format', 'book_review_pages', 'book_review_source', 'book_review_cover_url', 'book_review_summary', 'book_review_rating');

