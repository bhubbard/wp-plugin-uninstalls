<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('list_ticket_page_id');
delete_site_option('list_ticket_page_id');
delete_option('add_ticket_page_id');
delete_site_option('add_ticket_page_id');
delete_option('details_ticket_page_id');
delete_site_option('details_ticket_page_id');

