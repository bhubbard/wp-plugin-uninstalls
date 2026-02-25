-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lbrty_settings_general_options', 'lbrty_settings_display_options', 'lbrty_settings_advanced_options');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lbrty_isbn', 'lbrty_isbn13', 'lbrty_stores_found', 'lbrty_last_lookup_time', 'lbrty_first_lookup');
DELETE FROM wp_usermeta WHERE meta_key IN ('lbrty_isbn', 'lbrty_isbn13', 'lbrty_stores_found', 'lbrty_last_lookup_time', 'lbrty_first_lookup');
DELETE FROM wp_termmeta WHERE meta_key IN ('lbrty_isbn', 'lbrty_isbn13', 'lbrty_stores_found', 'lbrty_last_lookup_time', 'lbrty_first_lookup');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lbrty_isbn', 'lbrty_isbn13', 'lbrty_stores_found', 'lbrty_last_lookup_time', 'lbrty_first_lookup');

