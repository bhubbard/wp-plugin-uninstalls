<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('drbfd_blocks_for_discogs_options');
delete_site_option('drbfd_blocks_for_discogs_options');

