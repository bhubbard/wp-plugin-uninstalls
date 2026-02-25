<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('abdc_options');
delete_site_option('abdc_options');
delete_option('mo_dismiss_adnotice');
delete_site_option('mo_dismiss_adnotice');

