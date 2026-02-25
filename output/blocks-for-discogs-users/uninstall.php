<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gf_blocks_for_discogs__settings');
delete_site_option('gf_blocks_for_discogs__settings');

