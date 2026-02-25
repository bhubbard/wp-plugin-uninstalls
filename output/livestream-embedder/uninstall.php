<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('livestream_embedder_api_key');
delete_site_option('livestream_embedder_api_key');
delete_option('livestream_embedder_default_channel');
delete_site_option('livestream_embedder_default_channel');

