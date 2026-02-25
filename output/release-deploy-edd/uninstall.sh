#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edd_settings'
wp option delete 'woocommerce_shop_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_sl_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_sl_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_sl_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_sl_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_sl_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_sl_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_sl_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_sl_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_release_deploy_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_release_deploy_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_release_deploy_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_release_deploy_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_release_deploy_last_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_release_deploy_last_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_release_deploy_last_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_release_deploy_last_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_release_deploy_changelog_last_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_release_deploy_changelog_last_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_release_deploy_changelog_last_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_release_deploy_changelog_last_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_release_deploy_changelog_linked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_release_deploy_changelog_linked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_release_deploy_changelog_linked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_release_deploy_changelog_linked'"
