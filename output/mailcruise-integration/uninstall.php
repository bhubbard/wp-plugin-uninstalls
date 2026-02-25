<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailcruise_api_token');
delete_site_option('mailcruise_api_token');
delete_option('mailcruise_endpoint');
delete_site_option('mailcruise_endpoint');
delete_option('mailcruise_list_uid');
delete_site_option('mailcruise_list_uid');

