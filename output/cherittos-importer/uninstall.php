<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cheritto-wordpress-importer-current-job');
delete_site_option('cheritto-wordpress-importer-current-job');
delete_option('cheritto-wordpress-importer-current-job-path');
delete_site_option('cheritto-wordpress-importer-current-job-path');
delete_option('cheritto-wordpress-importer-current-job-stage');
delete_site_option('cheritto-wordpress-importer-current-job-stage');
delete_option('cheritto-wordpress-importer-attachment-queue-lock');
delete_site_option('cheritto-wordpress-importer-attachment-queue-lock');
delete_option('cheritto-wordpress-importer-attachment-queue-stage');
delete_site_option('cheritto-wordpress-importer-attachment-queue-stage');
delete_option('cheritto-wordpress-importer-thumbnails-queue-lock');
delete_site_option('cheritto-wordpress-importer-thumbnails-queue-lock');
delete_option('cheritto-wordpress-importer-thumbnails-queue-stage');
delete_site_option('cheritto-wordpress-importer-thumbnails-queue-stage');

