-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('MyWooCommerceShowroom_title', 'MyWooCommerceShowroom_pics', 'MyWooCommerceShowroom_useMedia', 'MyWooCommerceShowroom_prod_nr', 'MyWooCommerceShowroom_prod_cats', 'MyWooCommerceShowroom_cat_terms', 'MyWooCommerceShowroom_notification');

