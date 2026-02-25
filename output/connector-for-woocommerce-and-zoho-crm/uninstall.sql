-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pp_wczc_zoho_api2_token', 'pp_wczc_zoho_client_id', 'pp_wczc_zoho_client_secret', 'pp_wczc_zoho_email', 'pp_wczc_zoho_host', 'pp_wczc_zoho_api_token', 'pp_wczc_no_ssl_verify', 'pp_wczc_add_contacts', 'pp_wczc_update_contacts', 'pp_wczc_contacts_lead_source', 'pp_wczc_add_leads', 'pp_wczc_update_leads', 'pp_wczc_leads_lead_source');
DELETE FROM wp_options WHERE option_name LIKE 'pp_wczc_zoho_fields_%';

