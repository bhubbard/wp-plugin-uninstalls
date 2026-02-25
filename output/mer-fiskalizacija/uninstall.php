<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mer25fi_api_username');
delete_site_option('mer25fi_api_username');
delete_option('mer25fi_api_password');
delete_site_option('mer25fi_api_password');
delete_option('mer25fi_company_oib');
delete_site_option('mer25fi_company_oib');
delete_option('mer25fi_api_sandbox_active');
delete_site_option('mer25fi_api_sandbox_active');
delete_option('mer25fi_last_invoice_number');
delete_site_option('mer25fi_last_invoice_number');
delete_option('mer25fi_api_production_url');
delete_site_option('mer25fi_api_production_url');
delete_option('mer25fi_api_sandbox_url');
delete_site_option('mer25fi_api_sandbox_url');
delete_option('mer25fi_company_name');
delete_site_option('mer25fi_company_name');
delete_option('mer25fi_company_street_address');
delete_site_option('mer25fi_company_street_address');
delete_option('mer25fi_company_city');
delete_site_option('mer25fi_company_city');
delete_option('mer25fi_company_zip');
delete_site_option('mer25fi_company_zip');
delete_option('mer25fi_company_email');
delete_site_option('mer25fi_company_email');
delete_option('mer25fi_company_representative');
delete_site_option('mer25fi_company_representative');
delete_option('mer25fi_company_legal_form');
delete_site_option('mer25fi_company_legal_form');
delete_option('mer25fi_company_in_vat');
delete_site_option('mer25fi_company_in_vat');
delete_option('mer25fi_company_iban');
delete_site_option('mer25fi_company_iban');
delete_option('mer25fi_profile_id');
delete_site_option('mer25fi_profile_id');
delete_option('mer25fi_company_cash_register_id');
delete_site_option('mer25fi_company_cash_register_id');
delete_option('mer25fi_company_operater_tag');
delete_site_option('mer25fi_company_operater_tag');
delete_option('mer25fi_company_operater_oib');
delete_site_option('mer25fi_company_operater_oib');
delete_option('mer25fi_api_software_id');
delete_site_option('mer25fi_api_software_id');

// Clear Cron Jobs
wp_clear_scheduled_hook('mer25fi_check_all_invoice_status');

