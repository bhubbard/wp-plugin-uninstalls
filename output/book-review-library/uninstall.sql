-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('book_reviews_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('isbn', 'book_in_stock', 'award_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('isbn', 'book_in_stock', 'award_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('isbn', 'book_in_stock', 'award_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('isbn', 'book_in_stock', 'award_image');

