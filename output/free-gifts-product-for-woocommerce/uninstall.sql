-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('minimum_custom', 'maximum_custom', 'allowed_custom', 'fgw_combo_custom', 'fgw_gift_multiple_custom', 'minimum_price', 'maximum_price', 'allowed_price', 'fgw_gift_multiple_price', 'minimum_category', 'maximum_category', 'allowed_category', 'fgw_select_cats_category', 'fgw_gift_multiple_category');
DELETE FROM wp_options WHERE option_name LIKE '%fgwerror';

