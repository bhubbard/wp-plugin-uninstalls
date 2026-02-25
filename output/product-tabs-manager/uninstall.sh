#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ptabsm_ddefault_product_tabs'
wp option delete 'ptabsm_installed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tab'"
wp option delete 'ptabsm_is_migrated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_flash_messages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Clear Cron Jobs
wp cron event delete 'ptabsm_migrate_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ptabsm_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ptabsm_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ptabsm_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ptabsm_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptabsm_tab_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptabsm_tab_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptabsm_tab_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptabsm_tab_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptabsm_tab_visible_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptabsm_tab_visible_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptabsm_tab_visible_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptabsm_tab_visible_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptabsm_excluded_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptabsm_excluded_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptabsm_excluded_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptabsm_excluded_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptabsm_excluded_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptabsm_excluded_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptabsm_excluded_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptabsm_excluded_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptabsm_tab_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptabsm_tab_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptabsm_tab_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptabsm_tab_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptabsm_tab_specific_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptabsm_tab_specific_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptabsm_tab_specific_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptabsm_tab_specific_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptabsm_tab_specific_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptabsm_tab_specific_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptabsm_tab_specific_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptabsm_tab_specific_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptabsm_tab_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptabsm_tab_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptabsm_tab_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptabsm_tab_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptabsm_tab_is_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptabsm_tab_is_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptabsm_tab_is_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptabsm_tab_is_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptabsm_tab_visible_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptabsm_tab_visible_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptabsm_tab_visible_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptabsm_tab_visible_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptabsm_tab_content_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptabsm_tab_content_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptabsm_tab_content_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptabsm_tab_content_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptabsm_tab_specific_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptabsm_tab_specific_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptabsm_tab_specific_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptabsm_tab_specific_categories'"
