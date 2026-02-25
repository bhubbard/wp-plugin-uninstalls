#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_run'"
wp option delete 'sync_basalam_last_creatable_product_id'
wp option delete 'sync_basalam_review_never_remind'
wp option delete 'sync_basalam_pointer_onboarding_completed'
wp option delete 'sync_basalam_onboarding_completed'
wp option delete 'woocommerce_weight_unit'
wp option delete 'sync_basalam_settings'
wp option delete 'sync_basalam_version'
wp option delete 'sync_basalam_force_update'
wp option delete 'sync_basalam_info'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_lock' OR option_name LIKE '_site_transient_%_lock'"
wp transient delete 'sync_basalam_remind_later_review'
wp transient delete 'sync_basalam_just_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'sync_basalam_cpu_cores'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_sync_basalam_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_sync_basalam_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_sync_basalam_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_sync_basalam_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sync_basalam_product_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sync_basalam_product_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sync_basalam_product_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sync_basalam_product_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sync_basalam_product_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sync_basalam_product_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sync_basalam_product_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sync_basalam_product_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sync_basalam_is_wholesale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sync_basalam_is_wholesale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sync_basalam_is_wholesale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sync_basalam_is_wholesale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sync_basalam_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sync_basalam_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sync_basalam_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sync_basalam_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sync_basalam_is_mobile_product_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sync_basalam_is_mobile_product_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sync_basalam_is_mobile_product_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sync_basalam_is_mobile_product_checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sync_basalam_mobile_storage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sync_basalam_mobile_storage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sync_basalam_mobile_storage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sync_basalam_mobile_storage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sync_basalam_cpu_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sync_basalam_cpu_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sync_basalam_cpu_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sync_basalam_cpu_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sync_basalam_mobile_ram'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sync_basalam_mobile_ram'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sync_basalam_mobile_ram'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sync_basalam_mobile_ram'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sync_basalam_screen_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sync_basalam_screen_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sync_basalam_screen_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sync_basalam_screen_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sync_basalam_rear_camera'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sync_basalam_rear_camera'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sync_basalam_rear_camera'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sync_basalam_rear_camera'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sync_basalam_battery_capacity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sync_basalam_battery_capacity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sync_basalam_battery_capacity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sync_basalam_battery_capacity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sync_basalam_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sync_basalam_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sync_basalam_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sync_basalam_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sync_basalam_product_sync_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sync_basalam_product_sync_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sync_basalam_product_sync_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sync_basalam_product_sync_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sync_basalam_product_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sync_basalam_product_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sync_basalam_product_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sync_basalam_product_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sync_basalam_is_product_type_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sync_basalam_is_product_type_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sync_basalam_is_product_type_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sync_basalam_is_product_type_checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_basalam_order_tracking_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_basalam_order_tracking_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_basalam_order_tracking_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_basalam_order_tracking_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sync_basalam_discounted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sync_basalam_discounted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sync_basalam_discounted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sync_basalam_discounted'"
