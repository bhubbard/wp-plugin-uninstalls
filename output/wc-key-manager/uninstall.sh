#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wckm_pattern'
wp option delete 'wckm_charset'
wp option delete 'wckm_validate_key_page_id'
wp option delete 'wckm_installed'
wp option delete 'wckm_software_license'
wp option delete 'wckm_allow_duplicate_keys'
wp option delete 'wckm_enable_my_account_keys_page'
wp option delete 'wckm_my_account_keys_columns'
wp option delete 'wckm_my_enable_account_activations'
wp option delete 'wckm_my_account_allow_deactivation'
wp option delete 'wckm_automatic_delivery'
wp option delete 'wckm_hide_keys_from_processing_email'
wp option delete 'wckm_hide_keys_from_completed_email'
wp option delete 'wckm_disable_oos_keys'
wp option delete 'wckm_hide_order_details'
wp option delete 'wckm_my_account_keys_page'
wp option delete 'wckm_enable_software_api'
wp option delete 'wckm_manage_stock'
wp option delete 'woocommerce_manage_stock'
wp option delete 'wckm_duplicate_keys'
wp option delete 'wckm_enable_rest_api'
wp option delete 'wckm_key_source'
wp option delete 'wckm_valid_for'
wp option delete 'wckm_activation_limit'
wp option delete 'wckm_recycle_keys'
wp option delete 'wckm_proc_key_delivery'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'wckm_my_account_allow_activation'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_flash_messages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Clear Cron Jobs
wp cron event delete 'wc_key_manager_update_expired_keys'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wckm_keyed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wckm_keyed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wckm_keyed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wckm_keyed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wckm_key_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wckm_key_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wckm_key_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wckm_key_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wckm_generator_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wckm_generator_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wckm_generator_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wckm_generator_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wckm_is_sequential'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wckm_is_sequential'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wckm_is_sequential'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wckm_is_sequential'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wckm_delivery_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wckm_delivery_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wckm_delivery_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wckm_delivery_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wckm_enable_software'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wckm_enable_software'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wckm_enable_software'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wckm_enable_software'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wckm_software_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wckm_software_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wckm_software_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wckm_software_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wckm_software_min_php_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wckm_software_min_php_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wckm_software_min_php_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wckm_software_min_php_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wckm_software_min_wp_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wckm_software_min_wp_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wckm_software_min_wp_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wckm_software_min_wp_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wckm_software_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wckm_software_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wckm_software_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wckm_software_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wckm_software_changelog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wckm_software_changelog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wckm_software_changelog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wckm_software_changelog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wckm_sequential_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wckm_sequential_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wckm_sequential_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wckm_sequential_position'"
