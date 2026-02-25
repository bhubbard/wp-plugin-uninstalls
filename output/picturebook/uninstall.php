<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('links_recently_updated_prepend');
delete_site_option('links_recently_updated_prepend');
delete_option('links_updated_date_format');
delete_site_option('links_updated_date_format');
delete_option('links_recently_updated_append');
delete_site_option('links_recently_updated_append');

