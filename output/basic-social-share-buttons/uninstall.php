<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('basic-share-buttons__sites');
delete_site_option('basic-share-buttons__sites');
delete_option('basic-share-buttons__style');
delete_site_option('basic-share-buttons__style');
delete_option('basic-share-buttons__size');
delete_site_option('basic-share-buttons__size');

