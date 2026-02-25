-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simpbore_license_key', 'simpbore_license_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pickup_points', '_rental_price_type', '_rental_price', '_available_dates', '_extra_services');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pickup_points', '_rental_price_type', '_rental_price', '_available_dates', '_extra_services');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pickup_points', '_rental_price_type', '_rental_price', '_available_dates', '_extra_services');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pickup_points', '_rental_price_type', '_rental_price', '_available_dates', '_extra_services');

