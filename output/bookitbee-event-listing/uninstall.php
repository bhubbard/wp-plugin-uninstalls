<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('liveit_block');
delete_site_option('liveit_block');

// Delete Transients
delete_transient('liveit_block_cache');
delete_site_transient('liveit_block_cache');

