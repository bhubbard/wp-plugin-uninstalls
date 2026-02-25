<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sil-meat');
delete_site_option('sil-meat');
delete_option('sil-lazy-load-at');
delete_site_option('sil-lazy-load-at');
delete_option('sil-fade');
delete_site_option('sil-fade');
delete_option('sil-loader');
delete_site_option('sil-loader');
delete_option('sil-selector');
delete_site_option('sil-selector');
delete_option('sil-exclude');
delete_site_option('sil-exclude');
delete_option('sil-placeholder');
delete_site_option('sil-placeholder');
delete_option('sil-refresh-resize');
delete_site_option('sil-refresh-resize');
delete_option('sil-refresh-scroll');
delete_site_option('sil-refresh-scroll');
delete_option('sil-cleanup');
delete_site_option('sil-cleanup');

