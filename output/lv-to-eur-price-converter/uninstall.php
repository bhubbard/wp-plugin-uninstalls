<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lvtoeupr_rate');
delete_site_option('lvtoeupr_rate');
delete_option('lvtoeupr_do_activation_redirect');
delete_site_option('lvtoeupr_do_activation_redirect');

