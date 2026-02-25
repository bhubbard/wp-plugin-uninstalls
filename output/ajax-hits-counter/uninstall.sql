-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ajaxhc_use_rapid_incrementer', 'ajaxhc_dont_count_admins');
DELETE FROM wp_options WHERE option_name LIKE 'ajaxhc_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hits');
DELETE FROM wp_usermeta WHERE meta_key IN ('hits');
DELETE FROM wp_termmeta WHERE meta_key IN ('hits');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hits');

