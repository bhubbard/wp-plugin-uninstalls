-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('marbl_amazon_enabled', 'marbl_ebay_enabled', 'marbl_general_custom_resources_path', 'marbl_amazon_show_disclaimer', 'marbl_amazon_disclaimer_position', 'marbl_amazon_disclaimer', 'marbl_general_link_show_flags', 'marbl_general_link_open_new_window', 'marbl_general_link_link_nofollow', 'marbl_ebay_default_campaign_id', 'marbl_ebay_show_disclaimer', 'marbl_ebay_disclaimer', 'marbl_general_include_default_css', 'marbl_ebay_disclaimer_position');
DELETE FROM wp_options WHERE option_name LIKE 'marbl_amazon_link_associate_id_%';
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';
DELETE FROM wp_options WHERE option_name LIKE 'marbl_ebay_region_%';
DELETE FROM wp_options WHERE option_name LIKE 'marbl_ebay_link_partner_id_%';

