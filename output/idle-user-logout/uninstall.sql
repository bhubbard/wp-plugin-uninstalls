-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iul_data', 'iul_behavior');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_active_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_active_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_active_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_active_time');

