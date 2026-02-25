#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'psei_salesforce_token'
wp option delete 'psei_salesforce_instance_url'
wp option delete 'psei_salesforce_username'
wp option delete 'psei_salesforce_password'
wp option delete 'psei_salesforce_client_id'
wp option delete 'psei_salesforce_client_secret'
wp option delete 'psei_salesforce_login_table'
wp option delete 'psei_salesforce_access_token'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'elementor_form_fields'
wp option delete 'psei_salesforce_data'
wp option delete 'psei_otp_type'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

