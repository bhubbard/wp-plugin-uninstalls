<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('DIFFEN_COMPARISON_TOOL_VERSION');
delete_site_option('DIFFEN_COMPARISON_TOOL_VERSION');

