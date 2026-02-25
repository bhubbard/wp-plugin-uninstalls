#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ip2ok_keeplogs'
wp option delete 'ip2ok_disable_notices'
wp option delete 'ip2ok_enable_five_min'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isc%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isd%'"
wp option delete 'ip2ok_group_content'
wp option delete 'ip2ok_settings_arr'
wp option delete 'ip2ok_version'
wp option delete 'active_sitewide_plugins'
wp option delete 'ip2ok_groups_content'

# Clear Cron Jobs
wp cron event delete 'ip2ok_cron_sborki'
wp cron event delete 'ip2ok_cron_period'
wp cron event delete 'cron_sborki'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iptok_existing_photo_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iptok_existing_photo_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iptok_existing_photo_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iptok_existing_photo_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iptok_prod_id_on_ok'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iptok_prod_id_on_ok'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iptok_prod_id_on_ok'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iptok_prod_id_on_ok'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iptok_ok_product_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iptok_ok_product_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iptok_ok_product_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iptok_ok_product_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iptok_photo_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iptok_photo_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iptok_photo_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iptok_photo_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_primary_category'"
