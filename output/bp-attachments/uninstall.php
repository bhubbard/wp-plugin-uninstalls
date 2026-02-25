<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_bp_attachments_allowed_media_types');
delete_site_option('_bp_attachments_allowed_media_types');
delete_option('_bp_attachments_can_upload_privately');
delete_site_option('_bp_attachments_can_upload_privately');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

