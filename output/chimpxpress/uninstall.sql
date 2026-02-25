-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_post_edit_rows');
DELETE FROM wp_options WHERE option_name LIKE '%-errors';
DELETE FROM wp_options WHERE option_name LIKE '%-notices';

