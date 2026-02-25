<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('incredichat_api_key');
delete_site_option('incredichat_api_key');
delete_option('incredichat_widget_id');
delete_site_option('incredichat_widget_id');
delete_option('incredichat_embed_code');
delete_site_option('incredichat_embed_code');

