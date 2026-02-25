#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_rio_vizual_dashboard'
wp option delete '_rio_vizual_redirect_on_activation'
wp option delete '_rio_vizual_plugin_installed_on'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rio_vizual_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rio_vizual_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rio_vizual_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rio_vizual_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rio_vizual_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rio_vizual_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rio_vizual_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rio_vizual_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rio_vizual_upgrade_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rio_vizual_upgrade_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rio_vizual_upgrade_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rio_vizual_upgrade_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_riovizual_pattern'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_riovizual_pattern'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_riovizual_pattern'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_riovizual_pattern'"
