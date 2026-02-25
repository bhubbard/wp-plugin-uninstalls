<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ciaook_version');
delete_site_option('ciaook_version');
delete_option('ciaook_api_key');
delete_site_option('ciaook_api_key');

