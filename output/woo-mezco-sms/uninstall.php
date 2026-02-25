<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mezco_sms_settings');
delete_site_option('mezco_sms_settings');

// Delete Transients
delete_transient('mezco_sms_plugin');
delete_site_transient('mezco_sms_plugin');

// Clear Cron Jobs
wp_clear_scheduled_hook('mezco_sms_ejecuta_el_temporizador');

