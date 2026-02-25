<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chatasbot_client_id');
delete_site_option('chatasbot_client_id');
delete_option('chatasbot_api_key');
delete_site_option('chatasbot_api_key');
delete_option('chatasbot_base_url');
delete_site_option('chatasbot_base_url');

