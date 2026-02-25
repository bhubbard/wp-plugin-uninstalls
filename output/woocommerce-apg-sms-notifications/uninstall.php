<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apg_sms_settings');
delete_site_option('apg_sms_settings');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');

// Delete Transients
delete_transient('apg_sms_plugin');
delete_site_transient('apg_sms_plugin');

// Clear Cron Jobs
wp_clear_scheduled_hook('apg_sms_ejecuta_el_temporizador');
wp_clear_scheduled_hook('apg_sms_ejecuta_el_retraso');

