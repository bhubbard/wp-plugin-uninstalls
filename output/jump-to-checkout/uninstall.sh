#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jptc_secret_key'
wp option delete 'jptc_rewrite_version'
wp option delete 'jptc_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jptc_upgrade_widget_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jptc_upgrade_widget_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jptc_upgrade_widget_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jptc_upgrade_widget_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jptc_link_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jptc_link_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jptc_link_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jptc_link_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jptc_conversion_counted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jptc_conversion_counted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jptc_conversion_counted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jptc_conversion_counted'"
