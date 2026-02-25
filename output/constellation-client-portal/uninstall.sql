-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('accp_plugin_activation', 'accp_rewrite_flush_needed_after_settings_change', 'accp_review_notice_dismissed', 'accp_plugin_activation_time', 'accp_review_notice_last_shown', 'accp_company_add_to_main_menu', 'accp_company_status_repeater', 'accp_plugin_option_list', 'arscp_license_key', 'accp_notices_and_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('accp_dir', 'accp_file', 'accp_user', 'client_company', 'client_additional_company', 'accp_make_page_global', 'accp_company_primary_user', 'accp_home_page', 'accp_company_status', 'accp_duplicate_dir_notice', 'client_status', 'file_status', 'invoice_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('accp_dir', 'accp_file', 'accp_user', 'client_company', 'client_additional_company', 'accp_make_page_global', 'accp_company_primary_user', 'accp_home_page', 'accp_company_status', 'accp_duplicate_dir_notice', 'client_status', 'file_status', 'invoice_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('accp_dir', 'accp_file', 'accp_user', 'client_company', 'client_additional_company', 'accp_make_page_global', 'accp_company_primary_user', 'accp_home_page', 'accp_company_status', 'accp_duplicate_dir_notice', 'client_status', 'file_status', 'invoice_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('accp_dir', 'accp_file', 'accp_user', 'client_company', 'client_additional_company', 'accp_make_page_global', 'accp_company_primary_user', 'accp_home_page', 'accp_company_status', 'accp_duplicate_dir_notice', 'client_status', 'file_status', 'invoice_status');

