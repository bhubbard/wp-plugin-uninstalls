#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spt_plugin_dismiss_donate_notice'
wp option delete 'spt_plugin_no_thanks_donate_notice'
wp option delete 'spt_plugin_dismissed_time_donate'
wp option delete 'spt_plugin_installed_time_donate'
wp option delete 'spt_plugin_dismiss_rating_notice'
wp option delete 'spt_plugin_no_thanks_rating_notice'
wp option delete 'spt_plugin_dismissed_time'
wp option delete 'spt_plugin_installed_time'
wp option delete 'spt_plugin_settings'

# Delete Transients
wp transient delete 'spt-admin-notice-on-activation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spt_ticker_custom_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spt_ticker_custom_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spt_ticker_custom_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spt_ticker_custom_link'"
