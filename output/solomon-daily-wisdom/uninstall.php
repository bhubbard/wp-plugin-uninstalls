<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('solodawi_show_reference');
delete_site_option('solodawi_show_reference');
delete_option('solodawi_custom_heading');
delete_site_option('solodawi_custom_heading');
delete_option('solodawi_top_bar');
delete_site_option('solodawi_top_bar');

