<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('icl_sitepress_settings');
delete_site_option('icl_sitepress_settings');
delete_option('polylang');
delete_site_option('polylang');

