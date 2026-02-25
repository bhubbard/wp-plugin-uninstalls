<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('imageflux_exclude_extensions');
delete_site_option('imageflux_exclude_extensions');
delete_option('imageflux_storage');
delete_site_option('imageflux_storage');
delete_option('imageflux_domain');
delete_site_option('imageflux_domain');
delete_option('imageflux_format');
delete_site_option('imageflux_format');
delete_option('imageflux_quality');
delete_site_option('imageflux_quality');
delete_option('imageflux_exif_removal');
delete_site_option('imageflux_exif_removal');

