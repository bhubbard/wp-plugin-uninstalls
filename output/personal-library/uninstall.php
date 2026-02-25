<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('personal_library_contributor');
delete_site_option('personal_library_contributor');
delete_option('personal_library_author');
delete_site_option('personal_library_author');
delete_option('personal_library_editor');
delete_site_option('personal_library_editor');

