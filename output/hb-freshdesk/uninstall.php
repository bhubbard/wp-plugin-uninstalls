<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('freshdesk_connection_detail');
delete_site_option('freshdesk_connection_detail');

