<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpex_wpb_disabled_elements');
delete_site_option('wpex_wpb_disabled_elements');

