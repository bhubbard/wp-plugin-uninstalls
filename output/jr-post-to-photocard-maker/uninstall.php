<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jrpcm_page_id');
delete_site_option('jrpcm_page_id');
delete_option('jrpcm_settings');
delete_site_option('jrpcm_settings');

