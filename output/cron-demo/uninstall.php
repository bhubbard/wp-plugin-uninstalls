<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dprx_crondemo_mail');
delete_site_option('dprx_crondemo_mail');
delete_option('dprx_crondemo_inseconds');
delete_site_option('dprx_crondemo_inseconds');
delete_option('dprx_crondemo_recc');
delete_site_option('dprx_crondemo_recc');
delete_option('dprx_crondemo_triggercount');
delete_site_option('dprx_crondemo_triggercount');

// Clear Cron Jobs
wp_clear_scheduled_hook('dprx_crondemo_hook');

