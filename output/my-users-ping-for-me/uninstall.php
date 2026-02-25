<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('myuserspingforme_cron_delay');
delete_site_option('myuserspingforme_cron_delay');

