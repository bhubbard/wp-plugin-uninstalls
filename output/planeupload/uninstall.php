<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('planeupload_enc_key');
delete_site_option('planeupload_enc_key');
delete_option('planeupload_options');
delete_site_option('planeupload_options');
delete_option('planeupload_prototype');
delete_site_option('planeupload_prototype');

