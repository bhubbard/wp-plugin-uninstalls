-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mms_modal_enable', 'mms_city', 'mms_shabbat_next_shabbat_time', 'mms_its_the_key', 'mms_its_activate', 'mms_error', 'mms_success', 'mms_shabbat_force_close', 'mms_api_key', 'mms_cronjob_enable', 'mms_shabbat_close', 'mms_button_text', 'mms_button_bg_color', 'mms_button_text_color', 'mms_alert_hide_add_to_cart', 'mms_alert_hide_payment_options', 'mms_modal_page', 'mms_alert_bar_enable', 'mms_alert_bar_message', 'mms_alert_bar_text_color', 'mms_alert_bar_background_color', 'mms_alert_bar_close_button', 'hdo_cities_list', 'hdo_last_license_check');
DELETE FROM wp_options WHERE option_name LIKE 'hdo_schedule_%';

