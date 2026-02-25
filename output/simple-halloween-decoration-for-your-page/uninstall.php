<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('halloween_decoration_option_name');
delete_site_option('halloween_decoration_option_name');

