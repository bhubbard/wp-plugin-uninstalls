-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lcg_dismiss_discount_notice', 'lcg_migrate_serialize_to_json');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('img_link', 'img_tool', 'lcg_scode');
DELETE FROM wp_usermeta WHERE meta_key IN ('img_link', 'img_tool', 'lcg_scode');
DELETE FROM wp_termmeta WHERE meta_key IN ('img_link', 'img_tool', 'lcg_scode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('img_link', 'img_tool', 'lcg_scode');

