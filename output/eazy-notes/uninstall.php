<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('flush_rewrite_rules_needed');
delete_site_transient('flush_rewrite_rules_needed');

