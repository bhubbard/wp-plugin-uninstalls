#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ss360_siteId'
wp option delete 'ss360_api_token'
wp option delete 'ss360_pluginConfigId'
wp option delete 'ss360_category_filter_id'
wp option delete 'ss360_tag_filter_id'
wp option delete 'ss360_data_points'
wp option delete 'ss360_renamed_dp'
wp option delete 'ss360_inactive_dp'
wp option delete 'ss360_acf_def'
wp option delete 'ss360_indexing_mode'
wp option delete 'ss360_woocommerce_categories'
wp option delete 'ss360_price_filter_id'
wp option delete 'ss360_woocommerce_filters'
wp option delete 'ss360_sync_on_save'
wp option delete 'ss360_sync_on_status'
wp option delete 'ss360_sync_on_future'
wp option delete 'ss360_sync_on_delete'
wp option delete 'ss360_review_interaction'
wp option delete 'ss360_selected_menus'
wp option delete 'ss360_plugin_version'
wp option delete 'ss360_sr_type'
wp option delete 'ss360_account_created'
wp option delete 'ss360_is_configured'
wp option delete 'ss360_is_indexed'
wp option delete 'ss360_old_indexing_notice'
wp option delete 'ss360_password'
wp option delete 'ss360_installation_id'
wp option delete 'ss360_last_upgrade_request_ts'
wp option delete 'ss360_config'
wp option delete 'ss360_callbacks'
wp option delete 'ss360_page_limit'
wp option delete 'ss360_rate_checker'
wp option delete 'ss360_active_plan'
wp option delete 'ss360_inject_search'
wp option delete 'ss360_config_modifications'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
