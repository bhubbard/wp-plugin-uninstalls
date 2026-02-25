-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('url');
DELETE FROM wp_options WHERE option_name LIKE '%items_format';
DELETE FROM wp_options WHERE option_name LIKE '%remove_title_pattern';
DELETE FROM wp_options WHERE option_name LIKE '%item_format';
DELETE FROM wp_options WHERE option_name LIKE '%item_format_titlelayout';
DELETE FROM wp_options WHERE option_name LIKE '%item_format_cardlayout';

