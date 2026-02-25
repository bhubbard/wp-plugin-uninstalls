<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mms_modal_enable');
delete_site_option('mms_modal_enable');
delete_option('mms_city');
delete_site_option('mms_city');
delete_option('mms_shabbat_next_shabbat_time');
delete_site_option('mms_shabbat_next_shabbat_time');
delete_option('mms_its_the_key');
delete_site_option('mms_its_the_key');
delete_option('mms_its_activate');
delete_site_option('mms_its_activate');
delete_option('mms_error');
delete_site_option('mms_error');
delete_option('mms_success');
delete_site_option('mms_success');
delete_option('mms_shabbat_force_close');
delete_site_option('mms_shabbat_force_close');
delete_option('mms_api_key');
delete_site_option('mms_api_key');
delete_option('mms_cronjob_enable');
delete_site_option('mms_cronjob_enable');
delete_option('mms_shabbat_close');
delete_site_option('mms_shabbat_close');
delete_option('mms_button_text');
delete_site_option('mms_button_text');
delete_option('mms_button_bg_color');
delete_site_option('mms_button_bg_color');
delete_option('mms_button_text_color');
delete_site_option('mms_button_text_color');
delete_option('mms_alert_hide_add_to_cart');
delete_site_option('mms_alert_hide_add_to_cart');
delete_option('mms_alert_hide_payment_options');
delete_site_option('mms_alert_hide_payment_options');
delete_option('mms_modal_page');
delete_site_option('mms_modal_page');
delete_option('mms_alert_bar_enable');
delete_site_option('mms_alert_bar_enable');
delete_option('mms_alert_bar_message');
delete_site_option('mms_alert_bar_message');
delete_option('mms_alert_bar_text_color');
delete_site_option('mms_alert_bar_text_color');
delete_option('mms_alert_bar_background_color');
delete_site_option('mms_alert_bar_background_color');
delete_option('mms_alert_bar_close_button');
delete_site_option('mms_alert_bar_close_button');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_hdo_schedule_%', '_site_transient_hdo_schedule_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('hdo_cities_list');
delete_site_transient('hdo_cities_list');
delete_transient('hdo_last_license_check');
delete_site_transient('hdo_last_license_check');

// Clear Cron Jobs
wp_clear_scheduled_hook('we_check_shabbat_next');
wp_clear_scheduled_hook('hdo_revalidate_license');

