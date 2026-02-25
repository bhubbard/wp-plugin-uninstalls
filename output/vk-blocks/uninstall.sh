#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vk_blocks_options'
wp option delete 'vk_blocks_checked_flags'
wp option delete 'vk_blocks_balloon_meta'
wp option delete 'vk_font_awesome_options'
wp option delete 'vk_blocks_load_bootstrap'
wp option delete 'recently_activated'
wp option delete 'vk_font_awesome_version'
wp option delete 'lightning_theme_options'
wp option delete 'vk_color_manager_options'
wp option delete 'katawara_theme_options'
wp option delete 'vk_css_optimize_options'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'vkExUnit_common_options'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vkblocks_dismissed_notice_pro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vkblocks_dismissed_notice_pro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vkblocks_dismissed_notice_pro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vkblocks_dismissed_notice_pro'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term_color'"
