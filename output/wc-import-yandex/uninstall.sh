#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ip2y_keeplogs'
wp option delete 'ip2y_disable_notices'
wp option delete 'ip2y_group_content'
wp option delete 'ip2y_settings_arr'
wp option delete 'ip2y_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isc%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isd%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_keeplogs'"
wp option delete 'ip2y_groups_content'
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs
wp cron event delete 'ip2y_cron_sborki'
wp cron event delete 'ip2y_cron_period'
wp cron event delete 'cron_sborki'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ip2y_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ip2y_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ip2y_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ip2y_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ip2y_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ip2y_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ip2y_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ip2y_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ip2y_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ip2y_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ip2y_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ip2y_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ip2y_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ip2y_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ip2y_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ip2y_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ip2y_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ip2y_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ip2y_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ip2y_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ip2y_market_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ip2y_market_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ip2y_market_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ip2y_market_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ip2y_prod_id_on_yandex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ip2y_prod_id_on_yandex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ip2y_prod_id_on_yandex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ip2y_prod_id_on_yandex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ip2y_market_sku_on_yandex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ip2y_market_sku_on_yandex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ip2y_market_sku_on_yandex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ip2y_market_sku_on_yandex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ip2y_market_category_id_on_yandex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ip2y_market_category_id_on_yandex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ip2y_market_category_id_on_yandex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ip2y_market_category_id_on_yandex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ip2y_prod_archive_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ip2y_prod_archive_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ip2y_prod_archive_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ip2y_prod_archive_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_primary_category'"
