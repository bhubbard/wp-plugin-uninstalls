-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('almost_all_categories_w_title', 'almost_all_categories_w_categories');

