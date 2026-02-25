#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sbsa_settings'
wp option delete 'sbsa_plugin_version'
wp option delete 'sbsa_install_date'
wp option delete 'sbsa_updated_date'
wp option delete 'sbsa_review_dismissed'
wp option delete 'sbsa_review_dismissed_until'
wp option delete 'sbsa_review_seen'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'has_custom_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'has_custom_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'has_custom_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'has_custom_avatar'"
