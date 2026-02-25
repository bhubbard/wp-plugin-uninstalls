<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('template_kit_import_version');
delete_site_option('template_kit_import_version');
delete_option('template_kit_import_install_time');
delete_site_option('template_kit_import_install_time');

