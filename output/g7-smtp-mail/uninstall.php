<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('g7cloudsmtpmail_settings');
delete_site_option('g7cloudsmtpmail_settings');

