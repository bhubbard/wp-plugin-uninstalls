#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'siteground_migrator_temp_directory'
wp option delete 'siteground_migrator_encryption_key'
wp option delete 'siteground_migrator_is_siteground_env'
wp option delete 'siteground_migrator_transfer_id'
wp option delete 'siteground_migrator_transfer_psk'
wp option delete 'siteground_migrator_transfer_token'
wp option delete 'siteground_migrator_transfer_status'
wp option delete 'wp_background_process_pid'
wp option delete 'siteground_migrator_progress'
wp option delete 'siteground_migrator_email_recipient'
wp option delete 'siteground_migrator_send_email_notification'
wp option delete 'sg_migrator_colibri'
wp option delete 'siteground_migrator_current_step'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

