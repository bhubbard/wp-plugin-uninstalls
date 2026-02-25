#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%'"
wp option delete 'remind_me_later_bosa_pro_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'upgrade_bosa_pro_notice_dismiss_%'"

# Delete Transients
wp transient delete 'keon_toolset_demo_lists'
wp transient delete 'keon_toolset_theme_state_list'
wp transient delete 'keon_toolset_bosa_common_demo_lists'
wp transient delete 'keon_toolset_template_lists'
wp transient delete 'keon_toolset_template_state_list'
wp transient delete 'imported_option'
wp transient delete 'options.json'
wp transient delete 'imported_post_ids'
wp transient delete 'kt_adim_imported_post_ids'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismiss_gutener_upsell_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismiss_gutener_upsell_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismiss_gutener_upsell_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismiss_gutener_upsell_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'store_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'store_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'store_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'store_notice_dismissed'"
