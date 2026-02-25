-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_length';
DELETE FROM wp_options WHERE option_name LIKE '%_no_shortcode';
DELETE FROM wp_options WHERE option_name LIKE '%_finish_sentence';
DELETE FROM wp_options WHERE option_name LIKE '%_ellipsis';
DELETE FROM wp_options WHERE option_name LIKE '%_read_more_tpl';
DELETE FROM wp_options WHERE option_name LIKE '%_add_link';
DELETE FROM wp_options WHERE option_name LIKE '%_allowed_tags';

