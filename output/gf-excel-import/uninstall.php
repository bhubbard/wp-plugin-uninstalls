<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gfxl_import_option_separator');
delete_site_option('gfxl_import_option_separator');
delete_option('gfxl_import_option_encoding');
delete_site_option('gfxl_import_option_encoding');
delete_option('gfxl_import_option_adminonly');
delete_site_option('gfxl_import_option_adminonly');
delete_option('gfxl_import_option_clearing');
delete_site_option('gfxl_import_option_clearing');

