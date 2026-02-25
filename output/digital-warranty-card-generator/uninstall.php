<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_custom_wcgen_all_settings');
delete_site_option('_custom_wcgen_all_settings');
delete_option('_custom_pdfgen_all_settings');
delete_site_option('_custom_pdfgen_all_settings');

