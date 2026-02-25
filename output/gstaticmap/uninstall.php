<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gsmapCenter');
delete_site_option('gsmapCenter');
delete_option('gsmapZoom');
delete_site_option('gsmapZoom');
delete_option('gsmapSize');
delete_site_option('gsmapSize');
delete_option('gsmapImageFormat');
delete_site_option('gsmapImageFormat');
delete_option('gsmapMapType');
delete_site_option('gsmapMapType');
delete_option('gsmapAPIKey');
delete_site_option('gsmapAPIKey');
delete_option('gsmapClass');
delete_site_option('gsmapClass');
delete_option('gsmapStyle');
delete_site_option('gsmapStyle');

