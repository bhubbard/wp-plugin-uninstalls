<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plg_EYS7S_activation_redirect');
delete_site_option('plg_EYS7S_activation_redirect');

