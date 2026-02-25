-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('basket_basket', 'basket_token', 'basketin_armor_mode');

