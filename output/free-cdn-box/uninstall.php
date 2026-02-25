<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fcbox_enable_cdn');
delete_site_option('fcbox_enable_cdn');
delete_option('fcbox_minify');
delete_site_option('fcbox_minify');
delete_option('fcbox_cdn_url');
delete_site_option('fcbox_cdn_url');
delete_option('fcbox_cdn_option');
delete_site_option('fcbox_cdn_option');

