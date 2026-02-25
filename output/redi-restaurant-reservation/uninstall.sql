-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('redi_restaurant_places');
DELETE FROM wp_options WHERE option_name LIKE '%_page_skip';
DELETE FROM wp_options WHERE option_name LIKE '%_page_title';
DELETE FROM wp_options WHERE option_name LIKE '%_settings_saved';
DELETE FROM wp_options WHERE option_name LIKE '%_page_id';
DELETE FROM wp_options WHERE option_name LIKE '%_page_name';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'phone');

