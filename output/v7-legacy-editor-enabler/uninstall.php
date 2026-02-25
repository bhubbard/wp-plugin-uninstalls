<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('v7_legacy_editor_redirect');
delete_site_option('v7_legacy_editor_redirect');
delete_option('v7_legacy_editor_posts');
delete_site_option('v7_legacy_editor_posts');
delete_option('v7_legacy_editor_pages');
delete_site_option('v7_legacy_editor_pages');

