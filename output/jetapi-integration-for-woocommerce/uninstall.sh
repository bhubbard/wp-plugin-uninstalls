#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jetapi_settings'
wp option delete 'jeti_settings'
wp option delete 'jeti_bearer_token'
wp option delete 'jeti_authenticated'
wp option delete 'jeti_campaigns'
wp option delete 'jetapi_sender_name'
wp option delete 'jeti_bulk_message_queue'
wp option delete 'active_sitewide_plugins'
wp option delete 'jeti_activation_notice'

# Delete Transients
wp transient delete 'settings_errors'

# Clear Cron Jobs
wp cron event delete 'jeti_process_bulk_queue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_phone'"
