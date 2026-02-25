-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%language';
DELETE FROM wp_options WHERE option_name LIKE '%source';
DELETE FROM wp_options WHERE option_name LIKE '%cronjobtime';
DELETE FROM wp_options WHERE option_name LIKE '%version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('orginal_url', 'count_pages', 'book_version', 'book_publisher', 'book_year', 'book_url', 'book_image', 'author_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('orginal_url', 'count_pages', 'book_version', 'book_publisher', 'book_year', 'book_url', 'book_image', 'author_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('orginal_url', 'count_pages', 'book_version', 'book_publisher', 'book_year', 'book_url', 'book_image', 'author_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('orginal_url', 'count_pages', 'book_version', 'book_publisher', 'book_year', 'book_url', 'book_image', 'author_name');

