<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inline_hcjm_options');
delete_site_option('inline_hcjm_options');

// Delete Transients
delete_transient('inline-hcjml-activated');
delete_site_transient('inline-hcjml-activated');

