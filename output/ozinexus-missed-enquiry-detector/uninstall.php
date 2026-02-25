<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ozxmed_contact_page_id');
delete_site_option('ozxmed_contact_page_id');
delete_option('ozxmed_contact_page_url');
delete_site_option('ozxmed_contact_page_url');

// Delete Transients
delete_transient('ozxmed_last_scan');
delete_site_transient('ozxmed_last_scan');

