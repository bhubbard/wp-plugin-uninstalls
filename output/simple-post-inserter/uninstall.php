<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spi-paragraph-choice');
delete_site_option('spi-paragraph-choice');
delete_option('spi-middle-choice');
delete_site_option('spi-middle-choice');
delete_option('spi-insert-content');
delete_site_option('spi-insert-content');
delete_option('spi-post-type');
delete_site_option('spi-post-type');
delete_option('spi-post-category');
delete_site_option('spi-post-category');
delete_option('spi-post-id');
delete_site_option('spi-post-id');

