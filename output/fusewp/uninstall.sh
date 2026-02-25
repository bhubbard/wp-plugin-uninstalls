#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fusewp_dismiss_leave_review_forever'
wp option delete 'fusewp_install_date'
wp option delete 'fusewp_connect_token'
wp option delete 'fusewp_license_key'
wp option delete 'fusewp_upgrader_success_flag'
wp option delete 'fwp_db_ver'
wp option delete 'fusewp_plugin_activated'
wp option delete 'fusewp_bulk_sync_processed_cache'
wp option delete 'fusewp_db_ver'
wp option delete 'fusewp_bulk_sync_flag'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pand-%'"
wp option delete 'fusewp_license_status'
wp option delete 'fusewp_license_expired_status'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_email_list' OR option_name LIKE '_site_transient_%_email_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yolo-plugin-info-%' OR option_name LIKE '_site_transient_yolo-plugin-info-%'"
wp transient delete 'fusewp_aweber_email_list'
wp transient delete 'fusewp_constant_contact_contact_fields'
wp transient delete 'fusewp_constant_contact_email_list'
wp transient delete 'fusewp_constant_contact_tags'
wp transient delete 'fusewp_google_sheet_files'
wp transient delete 'fusewp_google_sheets_columns'
wp transient delete 'fusewp_google_sheet_files_sheets'
wp transient delete 'fusewp_hubspot_v3api_email_list'
wp transient delete 'fusewp_hubspot_contact_fields'
wp transient delete 'fusewp_hubspot_get_owners'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fusewp_hubspot_contact_id_%' OR option_name LIKE '_site_transient_fusewp_hubspot_contact_id_%'"
wp transient delete 'fusewp_salesforce_email_list'
wp transient delete 'fusewp_salesforce_topics'
wp transient delete 'zohocampaigns_contact_fields'

# Clear Cron Jobs
wp cron event delete 'fusewp_daily_recurring_job'

