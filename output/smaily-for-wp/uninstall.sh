#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smailyforwp_api_option'
wp option delete 'smailyforwp_form_option'
wp option delete 'widget_smaily_subscription_widget'
wp option delete 'smailyforwp_db_version'

# Delete Transients
wp transient delete 'smailyforwp_plugin_updated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smaily_for_wp_deprecation_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smaily_for_wp_deprecation_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smaily_for_wp_deprecation_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smaily_for_wp_deprecation_notice_dismissed'"
