<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smsq_settings');
delete_site_option('smsq_settings');

// Delete Transients
delete_transient('sms_q_plugin');
delete_site_transient('sms_q_plugin');

// Clear Cron Jobs
wp_clear_scheduled_hook('sms_q_ejecuta_el_temporizador');

