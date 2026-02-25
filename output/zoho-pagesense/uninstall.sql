-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ZPWS_ZOHO_PAGESENSE_domname', 'ZPWS_ZOHO_PAGESENSE_client_id', 'ZPWS_ZOHO_PAGESENSE_client_secret', 'ZPWS_ZOHO_PAGESENSE_script_updated', 'ZPWS_ZOHO_PAGESENSE_wc_token', 'ZPWS_ZOHO_PAGESENSE_error_msg', 'ZPWS_ZOHO_PAGESENSE_token_details', 'ZPWS_ZOHO_PAGESENSE_connect_time', 'ZPWS_ZOHO_PAGESENSE_user_email', 'ZPWS_ZOHO_PAGESENSE_portal_details', 'ZPWS_ZOHO_PAGESENSE_project_details', 'ZPWS_ZOHO_PAGESENSE_custom_script_data');

