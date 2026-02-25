-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fusewp_dismiss_leave_review_forever', 'fusewp_install_date', 'fusewp_connect_token', 'fusewp_license_key', 'fusewp_upgrader_success_flag', 'fwp_db_ver', 'fusewp_plugin_activated', 'fusewp_bulk_sync_processed_cache', 'fusewp_db_ver', 'fusewp_bulk_sync_flag', 'fusewp_license_status', 'fusewp_license_expired_status', 'fusewp_aweber_email_list', 'fusewp_constant_contact_contact_fields', 'fusewp_constant_contact_email_list', 'fusewp_constant_contact_tags', 'fusewp_google_sheet_files', 'fusewp_google_sheets_columns', 'fusewp_google_sheet_files_sheets', 'fusewp_hubspot_v3api_email_list', 'fusewp_hubspot_contact_fields', 'fusewp_hubspot_get_owners', 'fusewp_salesforce_email_list', 'fusewp_salesforce_topics', 'zohocampaigns_contact_fields');
DELETE FROM wp_options WHERE option_name LIKE 'pand-%';
DELETE FROM wp_options WHERE option_name LIKE '%_email_list';
DELETE FROM wp_options WHERE option_name LIKE 'yolo-plugin-info-%';
DELETE FROM wp_options WHERE option_name LIKE 'fusewp_hubspot_contact_id_%';

