<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nextgen_optimizer_settings');
delete_site_option('nextgen_optimizer_settings');
delete_option('nextgen_gallery_optimizer_basic_settings');
delete_site_option('nextgen_gallery_optimizer_basic_settings');

