<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qqworld-auto-save-images-exclude-domain');
delete_site_option('qqworld-auto-save-images-exclude-domain');
delete_option('qqworld-auto-save-images-grabber');
delete_site_option('qqworld-auto-save-images-grabber');

