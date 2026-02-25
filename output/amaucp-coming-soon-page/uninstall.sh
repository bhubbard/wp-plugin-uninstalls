#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'AMAUCP_Options'
wp option delete 'amaucp_stylesheet'
wp option delete 'active_sitewide_plugins'
wp option delete 'amaucp_irsetheme'
wp option delete 'amaucp_feature_quote'
wp option delete 'amaucp_feature_about'
wp option delete 'amaucp_feature_service'
wp option delete 'amaucp_feature_team'
wp option delete 'amaucp_feature_contact'
wp option delete 'amaucp_themequotes_bio'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
