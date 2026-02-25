<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eewee_twittercard_val_enabled');
delete_site_option('eewee_twittercard_val_enabled');
delete_option('eewee_twittercard_val_method');
delete_site_option('eewee_twittercard_val_method');
delete_option('eewee_twittercard_val_site');
delete_site_option('eewee_twittercard_val_site');
delete_option('eewee_twittercard_val_creator');
delete_site_option('eewee_twittercard_val_creator');

