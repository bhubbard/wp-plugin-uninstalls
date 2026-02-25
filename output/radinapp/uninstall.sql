-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dapp_SECRETKEY');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id', 'dpp_location_user', '_is_enable_add_to_cart_fast', '_digiappsaz_sale_price_dates_to', '_digiappsaz_sale_price_dates_from', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id', 'dpp_location_user', '_is_enable_add_to_cart_fast', '_digiappsaz_sale_price_dates_to', '_digiappsaz_sale_price_dates_from', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id', 'dpp_location_user', '_is_enable_add_to_cart_fast', '_digiappsaz_sale_price_dates_to', '_digiappsaz_sale_price_dates_from', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id', 'dpp_location_user', '_is_enable_add_to_cart_fast', '_digiappsaz_sale_price_dates_to', '_digiappsaz_sale_price_dates_from', 'rating');

