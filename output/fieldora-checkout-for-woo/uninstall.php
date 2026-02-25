<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scfm_label_position');
delete_site_option('scfm_label_position');
delete_option('scfm_error_position');
delete_site_option('scfm_error_position');
delete_option('scfm_stylish_options');
delete_site_option('scfm_stylish_options');
delete_option('scfm_delete_data_on_uninstall');
delete_site_option('scfm_delete_data_on_uninstall');
delete_option('scfm_required_indicator');
delete_site_option('scfm_required_indicator');
delete_option('scfm_custom_fields');
delete_site_option('scfm_custom_fields');
delete_option('scfm_version');
delete_site_option('scfm_version');

