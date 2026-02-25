<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('lumi.secure-post-with-link.flush_rewrite');
delete_site_transient('lumi.secure-post-with-link.flush_rewrite');

