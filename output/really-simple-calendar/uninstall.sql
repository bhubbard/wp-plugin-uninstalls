-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_event_number';
DELETE FROM wp_options WHERE option_name LIKE '%_style';
DELETE FROM wp_options WHERE option_name LIKE '%_extensions';
DELETE FROM wp_options WHERE option_name LIKE '%_event_fields';
DELETE FROM wp_options WHERE option_name LIKE '%_capability';
DELETE FROM wp_options WHERE option_name LIKE '%_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_style_post';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_style_post';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_style_post';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_style_post';

