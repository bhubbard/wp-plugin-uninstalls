<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cybreed_access_token');
delete_site_option('cybreed_access_token');
delete_option('cybreed_user_id');
delete_site_option('cybreed_user_id');
delete_option('cybreed_selected_organisation_id');
delete_site_option('cybreed_selected_organisation_id');
delete_option('cybreed_selected_chat_id');
delete_site_option('cybreed_selected_chat_id');
delete_option('cybreed_display_options');
delete_site_option('cybreed_display_options');
delete_option('cybreed_single_page_id');
delete_site_option('cybreed_single_page_id');

