#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'onwebchat_plugin_option'
wp option delete 'onwebchat_plugin_option_api_code'
wp option delete 'onwebchat_plugin_option_pages_select'
wp option delete 'onwebchat_plugin_option_show_pages'
wp option delete 'onwebchat_plugin_option_hide_pages'
wp option delete 'onwebchat_plugin_option_user'
wp option delete 'onwebchat_wc_sync_enabled'
wp option delete 'onwebchat_wc_sync_mode'
wp option delete 'onwebchat_wc_sync_include_price'
wp option delete 'onwebchat_wc_sync_secret'
wp option delete 'onwebchat_wc_last_bulk_sync'
wp option delete 'onwebchat_wc_bulk_in_progress'
wp option delete 'onwebchat_wc_bulk_done'
wp option delete 'onwebchat_wc_bulk_total'
wp option delete 'onwebchat_wc_last_sync_start'
wp option delete 'onwebchat_wc_excluded_categories'
wp option delete 'onwebchat_wc_bulk_page'
wp option delete 'onwebchat_plugin_option_hide'

# Delete Transients
wp transient delete 'onwebchat_wc_auth_error'

# Clear Cron Jobs
wp cron event delete 'onwebchat_wc_bulk_sync_batch'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_onwebchat_sync_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_onwebchat_sync_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_onwebchat_sync_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_onwebchat_sync_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_onwebchat_last_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_onwebchat_last_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_onwebchat_last_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_onwebchat_last_sync'"
