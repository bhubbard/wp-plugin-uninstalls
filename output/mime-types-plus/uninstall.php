<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mimetypesplus');
delete_site_option('mimetypesplus');
delete_option('mimetypesplus_exts');
delete_site_option('mimetypesplus_exts');
delete_option('mimetypesplus_settings');
delete_site_option('mimetypesplus_settings');

