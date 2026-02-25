-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_ad_list', 'fs_username_aliases', 'fs_bw_list');

