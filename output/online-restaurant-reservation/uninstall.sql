-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('online_restaurant_reservation_admin_notices', 'online_restaurant_reservation_db_version', 'online_restaurant_reservation_queue_flush_rewrite_rules', 'online_restaurant_reservation_admin_footer_text_rated', 'online_restaurant_reservation_enable_table_reservation_comments', 'online_restaurant_reservation_min_party_size', 'online_restaurant_reservation_schedule', 'online_restaurant_reservation_email_from_name', 'online_restaurant_reservation_email_from_address', 'online_restaurant_reservation_version', 'online_restaurant_reservation_max_party_size', 'online_restaurant_reservation_enable_comments', 'online_restaurant_reservation_time_range_steps', 'online_table_reservation_schedule', 'online_restaurant_reservation_email_footer_text', 'online_restaurant_reservation_email_header_image', 'online_restaurant_reservation_email_background_color', 'online_restaurant_reservation_email_body_background_color', 'online_restaurant_reservation_email_base_color', 'online_restaurant_reservation_email_text_color', 'orr_installing', '_orr_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'online_restaurant_reservation_admin_notice_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('angry');
DELETE FROM wp_usermeta WHERE meta_key IN ('angry');
DELETE FROM wp_termmeta WHERE meta_key IN ('angry');
DELETE FROM wp_commentmeta WHERE meta_key IN ('angry');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

