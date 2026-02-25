<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xkcd_embed');
delete_site_option('xkcd_embed');

// Delete Transients
delete_transient('xkcd_embed_latest');
delete_site_transient('xkcd_embed_latest');

