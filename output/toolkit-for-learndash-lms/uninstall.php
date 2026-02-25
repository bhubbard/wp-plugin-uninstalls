<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tkflld_options');
delete_site_option('tkflld_options');
delete_option('tkflld_learn_dash_update_flag');
delete_site_option('tkflld_learn_dash_update_flag');

