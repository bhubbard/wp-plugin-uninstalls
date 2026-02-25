#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wppopups_license_updates'
wp option delete 'wppopups_license'
wp option delete 'wppopups_review'
wp option delete 'wppopups_activated'
wp option delete 'wppopups_settings'
wp option delete 'wppopups_upgraded_from_1x'
wp option delete 'spu_integrations'
wp option delete 'active_sitewide_plugins'
wp option delete 'wppopups_upgrade_fields'
wp option delete 'wppopups_activation_redirect'
wp option delete 'wppopups_version_upgraded_from'
wp option delete 'wppopups_providers'
wp option delete 'wppopups_version'
wp option delete 'wppopups_preview_page'
wp option delete 'wppopups_debug'
wp option delete 'wppopups_logging'

# Delete Transients
wp transient delete '_wppopups_addons'
wp transient delete 'update_plugins'
wp transient delete 'wppopups_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wppopups_log_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wppopups_log_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wppopups_log_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wppopups_log_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spu_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spu_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spu_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spu_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spu_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spu_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spu_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spu_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spu_ab_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spu_ab_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spu_ab_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spu_ab_group'"
