-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rngshl_general_setting_option', 'rngshl_configure_dismiss', 'rngshl_first_flush');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shl_click_event');
DELETE FROM wp_usermeta WHERE meta_key IN ('shl_click_event');
DELETE FROM wp_termmeta WHERE meta_key IN ('shl_click_event');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shl_click_event');

