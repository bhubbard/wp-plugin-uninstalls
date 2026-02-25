-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wceb_background_color', 'wceb_main_color', 'wceb_text_color', 'wceb_booking_mode', 'wceb_number_of_dates', 'wceb_bookings_db_version', 'wceb_all_bookable', 'easy_booking_db_version', 'wceb_booking_duration', 'wceb_custom_booking_duration', 'easy_booking_display_notice_pro_upgrade', 'easy_booking_display_notice_pro_upgrade_reminder', 'woocommerce_price_num_decimals', 'woocommerce_price_decimal_sep', 'woocommerce_price_thousand_sep', 'wceb_calendar_theme', 'wceb_keep_start_status_for', 'wceb_keep_end_status_for', 'wceb_set_start_booking_status', 'wceb_last_available_date', 'wceb_booking_min', 'wceb_booking_max', 'wceb_first_available_date', 'active_sitewide_plugins', 'woocommerce_prices_include_tax', 'woocommerce_tax_display_shop', 'wceb_set_processing_booking_status', 'wceb_set_completed_booking_status', 'easy_booking_settings', 'wceb_set_end_booking_status', 'wceb_set_end_status', 'wceb_updated', 'wceb_activated');
DELETE FROM wp_options WHERE option_name LIKE 'easy_booking_display_notice_%';
DELETE FROM wp_options WHERE option_name LIKE '%_booking_status';
DELETE FROM wp_options WHERE option_name LIKE 'wceb_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_booking_min', '_booking_max', '_first_available_date', '_last_available_date', '_number_of_dates', '_booking_duration', '_bookable', '_booking_option', '_booking_dates', '_custom_booking_duration');
DELETE FROM wp_usermeta WHERE meta_key IN ('_booking_min', '_booking_max', '_first_available_date', '_last_available_date', '_number_of_dates', '_booking_duration', '_bookable', '_booking_option', '_booking_dates', '_custom_booking_duration');
DELETE FROM wp_termmeta WHERE meta_key IN ('_booking_min', '_booking_max', '_first_available_date', '_last_available_date', '_number_of_dates', '_booking_duration', '_bookable', '_booking_option', '_booking_dates', '_custom_booking_duration');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_booking_min', '_booking_max', '_first_available_date', '_last_available_date', '_number_of_dates', '_booking_duration', '_bookable', '_booking_option', '_booking_dates', '_custom_booking_duration');

