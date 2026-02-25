<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elementor_viewport_lg');
delete_site_option('elementor_viewport_lg');
delete_option('elementor_viewport_md');
delete_site_option('elementor_viewport_md');

