#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fluentwiz_cloud_storage_manager_pro_plugin_license'
wp option delete 'fluentwiz_cloud_storage_manager_connections'
wp option delete 'fwcsm_configuration_email_consent'
wp option delete 'fwcsm_email_consent_step_dismissed'

# Clear Cron Jobs
wp cron event delete 'fwcsm_process_deleting'
wp cron event delete 'fwcsm_refresh_google_drive_token'
wp cron event delete 'fwcsm_refresh_dropbox_token'
wp cron event delete 'fwcsm_refresh_microsoft_onedrive_token'
wp cron event delete 'fwcsm_upload_cleanup'

