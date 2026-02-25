<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('EDSP_separator_format');
delete_site_option('EDSP_separator_format');
delete_option('EDSP_attributes');
delete_site_option('EDSP_attributes');
delete_option('EDSP_classes');
delete_site_option('EDSP_classes');
delete_option('EDSP_options');
delete_site_option('EDSP_options');

