<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vanderweb_accordions_shortcodes_option_name');
delete_site_option('vanderweb_accordions_shortcodes_option_name');

