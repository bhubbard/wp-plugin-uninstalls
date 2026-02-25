#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpshift_user'
wp option delete 'wpshift_api_token'
wp option delete 'wpshift_connected_at'
wp option delete 'wpshift_email_settings'
wp option delete 'wpshift_site_health_token'
wp option delete 'wpshift_companion_version'

# Delete Transients
wp transient delete 'wpshift_pending_import'
wp transient delete 'wpshift_oauth_result'
wp transient delete 'wpshift_import_error'
wp transient delete 'wpshift_current_backup'
wp transient delete 'wpshift_oauth_state'
wp transient delete 'wpshift_connect_code'
wp transient delete 'wpshift_site_status'
wp transient delete 'wpshift_smtp_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpshift_backup_state_%' OR option_name LIKE '_site_transient_wpshift_backup_state_%'"
wp transient delete 'wpshift_magic_login_error'

# Clear Cron Jobs
wp cron event delete 'wpshift_process_backup_chunk'

