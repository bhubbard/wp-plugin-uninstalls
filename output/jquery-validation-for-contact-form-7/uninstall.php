<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jvcf7_install_date');
delete_site_option('jvcf7_install_date');
delete_option('jvcf7_current_version');
delete_site_option('jvcf7_current_version');
delete_option('jvcf7_show_label_error');
delete_site_option('jvcf7_show_label_error');
delete_option('jvcf7_invalid_field_design');
delete_site_option('jvcf7_invalid_field_design');

