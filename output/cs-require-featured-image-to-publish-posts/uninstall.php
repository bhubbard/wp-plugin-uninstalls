<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('cs_has_post_thumbnail');
delete_site_transient('cs_has_post_thumbnail');

