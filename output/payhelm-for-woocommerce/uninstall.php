<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('paywoo_private_key');
delete_site_option('paywoo_private_key');
delete_option('has_visited_channels');
delete_site_option('has_visited_channels');
delete_option('ck');
delete_site_option('ck');
delete_option('cs');
delete_site_option('cs');

