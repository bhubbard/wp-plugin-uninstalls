<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pis_tag_manager_website_id');
delete_site_option('pis_tag_manager_website_id');

