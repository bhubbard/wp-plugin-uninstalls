<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mapgrip_height');
delete_site_option('mapgrip_height');
delete_option('mapgrip_width');
delete_site_option('mapgrip_width');
delete_option('mapgrip_user_name');
delete_site_option('mapgrip_user_name');
delete_option('mapgrip_password');
delete_site_option('mapgrip_password');
delete_option('mapgrip_client_id');
delete_site_option('mapgrip_client_id');
delete_option('mapgrip_title');
delete_site_option('mapgrip_title');
delete_option('mapgrip_subtitle');
delete_site_option('mapgrip_subtitle');
delete_option('mapgrip_grant_type');
delete_site_option('mapgrip_grant_type');
delete_option('mapgrip_embed_url');
delete_site_option('mapgrip_embed_url');
delete_option('mapgrip_secret_token');
delete_site_option('mapgrip_secret_token');
delete_option('mapgrip_api_url');
delete_site_option('mapgrip_api_url');
delete_option('mapgrip_auth_token');
delete_site_option('mapgrip_auth_token');

