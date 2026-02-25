<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('matcha_extra_activated_notice');
delete_site_transient('matcha_extra_activated_notice');
delete_transient('matcha_wishlist_table_checked');
delete_site_transient('matcha_wishlist_table_checked');

