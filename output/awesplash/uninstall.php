<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('awesplash_custom_css');
delete_site_transient('awesplash_custom_css');
delete_transient('awesplash_custom_font_url');
delete_site_transient('awesplash_custom_font_url');

