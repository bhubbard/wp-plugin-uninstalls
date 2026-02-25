<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vapm_markup_percentage');
delete_site_option('vapm_markup_percentage');
delete_option('vapm_vat_percentage');
delete_site_option('vapm_vat_percentage');

// Delete Transients
delete_transient('vapm_updated_products');
delete_site_transient('vapm_updated_products');
delete_transient('vapm_skipped_products');
delete_site_transient('vapm_skipped_products');
delete_transient('vapm_session_updated_products');
delete_site_transient('vapm_session_updated_products');
delete_transient('vapm_skip_calculations_mode');
delete_site_transient('vapm_skip_calculations_mode');

