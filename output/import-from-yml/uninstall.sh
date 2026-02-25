#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ipytw_plugin_notifications'
wp option delete 'ipytw_settings_arr'
wp option delete 'ipytw_last_feed_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ipytw_last_element_feed_%'"
wp option delete 'ipytw_keeplogs'
wp option delete 'active_sitewide_plugins'
wp option delete 'ipytw_registered_feeds_arr_backup'
wp option delete 'ipytw_settings_arr_backup'
wp option delete 'ipytw_registered_feeds_arr'
wp option delete 'ipytw_version'
wp option delete 'ipytw_feed_content'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isc%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isd%'"

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'

# Clear Cron Jobs
wp cron event delete 'ipytw_cron_start_feed_creation'
wp cron event delete 'ipytw_cron_sborki'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ipytw_feed_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ipytw_feed_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ipytw_feed_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ipytw_feed_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ipytw_feed_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ipytw_feed_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ipytw_feed_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ipytw_feed_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ipytw_date_last_import'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ipytw_date_last_import'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ipytw_date_last_import'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ipytw_date_last_import'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ipytw_import_feed_picture_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ipytw_import_feed_picture_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ipytw_import_feed_picture_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ipytw_import_feed_picture_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ipytw_feed_var_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ipytw_feed_var_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ipytw_feed_var_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ipytw_feed_var_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ipytw_feed_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ipytw_feed_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ipytw_feed_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ipytw_feed_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ipytw_feed_category_parent_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ipytw_feed_category_parent_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ipytw_feed_category_parent_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ipytw_feed_category_parent_id'"
