<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');

// Delete Transients
delete_transient('cision_block_flush_rewrite_rules');
delete_site_transient('cision_block_flush_rewrite_rules');

