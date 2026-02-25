<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cbpqc_height');
delete_site_option('cbpqc_height');
delete_option('cbpqc_width');
delete_site_option('cbpqc_width');

