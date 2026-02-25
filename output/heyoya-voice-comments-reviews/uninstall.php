<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('heyoya_options');
delete_site_option('heyoya_options');
delete_option('heyoya-options');
delete_site_option('heyoya-options');

