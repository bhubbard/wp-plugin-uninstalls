#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'contactsync_cron_processing'
wp option delete 'contactsync_access_token'
wp option delete 'contactsync_refresh_token'
wp option delete 'contactsync_token_expires_in'
wp option delete 'contactsync_user_email'
wp option delete 'contactsync_user_display_name'
wp option delete 'contactsync_current_batch_page'

# Delete Transients
wp transient delete 'contactsync_auth_notice'

# Clear Cron Jobs
wp cron event delete 'contactsync_process_next_batch'

