-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_cart_redirect_after_add');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('uou_bookable_main_cost', 'bookable_availibility', 'own_availibility_date_ranges', 'bookable_meta', 'bookable_availibility_resource', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('uou_bookable_main_cost', 'bookable_availibility', 'own_availibility_date_ranges', 'bookable_meta', 'bookable_availibility_resource', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('uou_bookable_main_cost', 'bookable_availibility', 'own_availibility_date_ranges', 'bookable_meta', 'bookable_availibility_resource', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('uou_bookable_main_cost', 'bookable_availibility', 'own_availibility_date_ranges', 'bookable_meta', 'bookable_availibility_resource', '_price');

