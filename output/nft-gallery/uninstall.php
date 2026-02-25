<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nftgallery-api');
delete_site_option('nftgallery-api');
delete_option('nftgallery-type');
delete_site_option('nftgallery-type');
delete_option('nftgallery-limit');
delete_site_option('nftgallery-limit');
delete_option('nftgallery-style');
delete_site_option('nftgallery-style');
delete_option('nftgallery-id');
delete_site_option('nftgallery-id');

