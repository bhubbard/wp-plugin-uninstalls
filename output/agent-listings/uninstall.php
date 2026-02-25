<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lfzw_fr_listings_url');
delete_site_option('lfzw_fr_listings_url');
delete_option('lfzw_encoded_zuid');
delete_site_option('lfzw_encoded_zuid');

