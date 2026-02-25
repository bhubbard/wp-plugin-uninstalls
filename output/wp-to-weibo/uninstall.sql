-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hjyl_appkey', 'hjyl_name', 'hjyl_password', 'hjyl_share_toutiao');

