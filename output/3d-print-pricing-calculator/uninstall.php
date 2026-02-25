<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ppc3d_plugin_version');
delete_site_option('ppc3d_plugin_version');
delete_option('ppc3d_show_onboarding');
delete_site_option('ppc3d_show_onboarding');
delete_option('ppc3d_stl_parser_api_url');
delete_site_option('ppc3d_stl_parser_api_url');
delete_option('ppc3d_stl_parser_api_key');
delete_site_option('ppc3d_stl_parser_api_key');
delete_option('stl_parser_cost_per_cc');
delete_site_option('stl_parser_cost_per_cc');
delete_option('ppc3d_cost_per_cubic_centimeter');
delete_site_option('ppc3d_cost_per_cubic_centimeter');
delete_option('ppc3d_currency_symbol');
delete_site_option('ppc3d_currency_symbol');
delete_option('ppc3d_currency_position');
delete_site_option('ppc3d_currency_position');
delete_option('ppc3d_uploaded_files');
delete_site_option('ppc3d_uploaded_files');
delete_option('use_default_email_template');
delete_site_option('use_default_email_template');
delete_option('ppc3d_email_template');
delete_site_option('ppc3d_email_template');
delete_option('ppc3d_api_statistics');
delete_site_option('ppc3d_api_statistics');
delete_option('ppc3d_api_limits');
delete_site_option('ppc3d_api_limits');
delete_option('ppc3d_subscription_plan');
delete_site_option('ppc3d_subscription_plan');
delete_option('ppc3d_stl_parser_cost_per_cc');
delete_site_option('ppc3d_stl_parser_cost_per_cc');
delete_option('ppc3d_enable_bulk_orders');
delete_site_option('ppc3d_enable_bulk_orders');
delete_option('ppc3d_show_file_upload_section');
delete_site_option('ppc3d_show_file_upload_section');
delete_option('ppc3d_enable_technology_options');
delete_site_option('ppc3d_enable_technology_options');
delete_option('ppc3d_printing_technology_options');
delete_site_option('ppc3d_printing_technology_options');
delete_option('ppc3d_enable_material_options');
delete_site_option('ppc3d_enable_material_options');
delete_option('ppc3d_material_options');
delete_site_option('ppc3d_material_options');
delete_option('ppc3d_enable_quality_options');
delete_site_option('ppc3d_enable_quality_options');
delete_option('ppc3d_quality_options');
delete_site_option('ppc3d_quality_options');
delete_option('ppc3d_enable_infill_options');
delete_site_option('ppc3d_enable_infill_options');
delete_option('ppc3d_infill_options');
delete_site_option('ppc3d_infill_options');
delete_option('ppc3d_enable_color_options');
delete_site_option('ppc3d_enable_color_options');
delete_option('ppc3d_color_options');
delete_site_option('ppc3d_color_options');
delete_option('ppc3d_notification_email');
delete_site_option('ppc3d_notification_email');
delete_option('ppc3d_invoice_email');
delete_site_option('ppc3d_invoice_email');
delete_option('ppc3d_email_subject_prefix');
delete_site_option('ppc3d_email_subject_prefix');

// Delete Transients
delete_transient('ppc3d_activation_redirect');
delete_site_transient('ppc3d_activation_redirect');
delete_transient('ppc3d_transient_key');
delete_site_transient('ppc3d_transient_key');
delete_transient('ppc3d_debug_emails');
delete_site_transient('ppc3d_debug_emails');

