#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'redq_se_elementor_widgets_settings'
wp option delete 'redq_se_installed'
wp option delete 'redq_se_version'
wp option delete 'redq_se_mega_menu_enable_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_elementor_remote_info_api_data_%'"
wp option delete '__validate_author_dtaddons__'
wp option delete 'redq_se_cache_keys'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_se_author_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_se_author_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_se_author_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_se_author_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_se_author_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_se_author_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_se_author_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_se_author_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_se_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_se_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_se_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_se_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_supper_mega_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_supper_mega_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_supper_mega_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_supper_mega_menu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_supper_mega_menu_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_supper_mega_menu_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_supper_mega_menu_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_supper_mega_menu_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
