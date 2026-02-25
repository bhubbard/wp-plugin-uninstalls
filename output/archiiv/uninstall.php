<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('arc_publication_id');
delete_site_option('arc_publication_id');
delete_option('arc_api_key');
delete_site_option('arc_api_key');
delete_option('redirect_page');
delete_site_option('redirect_page');

