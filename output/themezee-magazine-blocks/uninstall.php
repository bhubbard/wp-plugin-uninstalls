<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('themezee_magazine_blocks_cached_post_ids');
delete_site_transient('themezee_magazine_blocks_cached_post_ids');

