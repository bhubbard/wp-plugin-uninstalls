#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_vk_ver'
wp option delete 'wp_vk_db_ver'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_vk_ver_%'"
wp option delete 'vk_pay_conf'
wp option delete 'wbm-cnf'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vk_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vk_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vk_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vk_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wb_down_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wb_down_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wb_down_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wb_down_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wb_dl_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wb_dl_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wb_dl_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wb_dl_mode'"
