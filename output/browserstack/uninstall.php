<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('browserstack_screenshot_testing');
delete_site_option('browserstack_screenshot_testing');
delete_option('preview_key_field');
delete_site_option('preview_key_field');
delete_option('draft_public_preview_field');
delete_site_option('draft_public_preview_field');

