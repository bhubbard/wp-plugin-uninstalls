<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('c404Designer_selected_404_page');
delete_site_option('c404Designer_selected_404_page');

