-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('w4pl_flush_rules');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_w4pl');
DELETE FROM wp_usermeta WHERE meta_key IN ('_w4pl');
DELETE FROM wp_termmeta WHERE meta_key IN ('_w4pl');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_w4pl');

