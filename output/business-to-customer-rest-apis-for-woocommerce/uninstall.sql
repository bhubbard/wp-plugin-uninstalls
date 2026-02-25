-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lwra_general_settings', 'lwra_slider_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_login', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_login', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_login', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_login', 'first_name', 'last_name');

