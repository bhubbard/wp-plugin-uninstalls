<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auto_attachments_cleaner_post_types');
delete_site_option('auto_attachments_cleaner_post_types');

// Delete Transients
delete_transient('auto_attachments_cleaner_deleted');
delete_site_transient('auto_attachments_cleaner_deleted');

