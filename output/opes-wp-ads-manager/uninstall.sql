-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_positions_widgets';
DELETE FROM wp_options WHERE option_name LIKE '%_ad_sizes';
DELETE FROM wp_options WHERE option_name LIKE '%_admin_column_size';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('advert_state', 'advert_url', 'show_advert_start_date', 'show_advert_stop_date', 'ad_position', 'order_in_position');
DELETE FROM wp_usermeta WHERE meta_key IN ('advert_state', 'advert_url', 'show_advert_start_date', 'show_advert_stop_date', 'ad_position', 'order_in_position');
DELETE FROM wp_termmeta WHERE meta_key IN ('advert_state', 'advert_url', 'show_advert_start_date', 'show_advert_stop_date', 'ad_position', 'order_in_position');
DELETE FROM wp_commentmeta WHERE meta_key IN ('advert_state', 'advert_url', 'show_advert_start_date', 'show_advert_stop_date', 'ad_position', 'order_in_position');

