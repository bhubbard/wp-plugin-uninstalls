<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Radius');
delete_site_option('Radius');
delete_option('Sigma');
delete_site_option('Sigma');
delete_option('Sharpening');
delete_site_option('Sharpening');
delete_option('Threshold');
delete_site_option('Threshold');
delete_option('CompressionQuality');
delete_site_option('CompressionQuality');
delete_option('AutoConLev');
delete_site_option('AutoConLev');

