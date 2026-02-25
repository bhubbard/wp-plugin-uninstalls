<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('thumbgen_cache_files');
delete_site_option('thumbgen_cache_files');
delete_option('thumbgen_default_image');
delete_site_option('thumbgen_default_image');

