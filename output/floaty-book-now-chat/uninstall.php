<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('floaty_button_options');
delete_site_option('floaty_button_options');
delete_option('vzflty_options');
delete_site_option('vzflty_options');

