<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('timber-editor_general_supported-post-types');
delete_site_option('timber-editor_general_supported-post-types');
delete_option('timber-editor_codemirror_theme');
delete_site_option('timber-editor_codemirror_theme');

