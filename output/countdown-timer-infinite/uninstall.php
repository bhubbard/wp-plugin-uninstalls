<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('countdowncdt_timer_installed');
delete_site_option('countdowncdt_timer_installed');
delete_option('cdt_inf_basics');
delete_site_option('cdt_inf_basics');
delete_option('cdt_inf_color');
delete_site_option('cdt_inf_color');

