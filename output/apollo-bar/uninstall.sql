-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apb_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('apb_start_date', 'apb_end_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('apb_start_date', 'apb_end_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('apb_start_date', 'apb_end_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('apb_start_date', 'apb_end_date');

