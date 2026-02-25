<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stb_version');
delete_site_option('stb_version');
delete_option('stb_pointers');
delete_site_option('stb_pointers');
delete_option('stb_db_version');
delete_site_option('stb_db_version');
delete_option('SpecialTextBoxesAdminSettings');
delete_site_option('SpecialTextBoxesAdminSettings');
delete_option('SpecialTextBoxesAdminOptions');
delete_site_option('SpecialTextBoxesAdminOptions');

