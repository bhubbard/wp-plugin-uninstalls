<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hfc_api_key');
delete_site_option('hfc_api_key');
delete_option('hfc_embed_token');
delete_site_option('hfc_embed_token');

