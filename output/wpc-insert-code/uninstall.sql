-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_head';
DELETE FROM wp_options WHERE option_name LIKE '%_top_of_page';
DELETE FROM wp_options WHERE option_name LIKE '%_above_header';
DELETE FROM wp_options WHERE option_name LIKE '%_below_header';
DELETE FROM wp_options WHERE option_name LIKE '%_above_content';
DELETE FROM wp_options WHERE option_name LIKE '%_below_content';
DELETE FROM wp_options WHERE option_name LIKE '%_footer';

