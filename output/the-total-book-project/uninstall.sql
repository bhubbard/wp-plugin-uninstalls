-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ttbp_settings');
DELETE FROM wp_options WHERE option_name LIKE 'book_author_error_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_book_isbn', '_book_publication_date', '_book_publisher', '_book_description', '_book_subtitle', '_book_dedication', '_book_acknowledgments', '_book_about_author', '_book_author', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_book_isbn', '_book_publication_date', '_book_publisher', '_book_description', '_book_subtitle', '_book_dedication', '_book_acknowledgments', '_book_about_author', '_book_author', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_book_isbn', '_book_publication_date', '_book_publisher', '_book_description', '_book_subtitle', '_book_dedication', '_book_acknowledgments', '_book_about_author', '_book_author', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_book_isbn', '_book_publication_date', '_book_publisher', '_book_description', '_book_subtitle', '_book_dedication', '_book_acknowledgments', '_book_about_author', '_book_author', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

