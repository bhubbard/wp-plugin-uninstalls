-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_enable';
DELETE FROM wp_options WHERE option_name LIKE '%_comment_need_pending';
DELETE FROM wp_options WHERE option_name LIKE '%_enabled_cf7';
DELETE FROM wp_options WHERE option_name LIKE '%_subject';
DELETE FROM wp_options WHERE option_name LIKE '%_message';

