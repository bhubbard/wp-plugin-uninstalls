-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('atnfwoo_tracking_number_description');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('atnfwoo_courier_name', 'atnfwoo_tracking_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('atnfwoo_courier_name', 'atnfwoo_tracking_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('atnfwoo_courier_name', 'atnfwoo_tracking_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('atnfwoo_courier_name', 'atnfwoo_tracking_number');

