<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sitemiletos_page_id');
delete_site_option('sitemiletos_page_id');
delete_option('sitemiletos_msg');
delete_site_option('sitemiletos_msg');

