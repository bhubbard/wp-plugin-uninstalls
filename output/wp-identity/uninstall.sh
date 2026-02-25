#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'identity_login_enabled'
wp option delete 'identity_key_file'
wp option delete 'identity_cert_file'
wp option delete 'identity_editing_disabled'
wp option delete 'identity_key_password'
wp option delete 'identity_ca_file'
wp option delete 'identity_telemetry_enabled'

# Clear Cron Jobs
wp cron event delete 'identity_check_status_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_forget_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_forget_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_forget_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_forget_password'"
