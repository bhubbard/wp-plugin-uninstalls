-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mi13_comment_user_edit');
DELETE FROM wp_options WHERE option_name LIKE 'mi13_comment_user_edit_%';

