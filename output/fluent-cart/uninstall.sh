#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fluent_cart_payment_methods_order'
wp option delete 'rewrite_rules'
wp option delete 'fluent_cart_do_activation_redirect'
wp option delete 'fluent_cart_plugin_once_activated'
wp option delete 'fluent_cart_tax_configuration_settings'
wp option delete 'fluent_cart_store_settings'
wp option delete '__fluent_cart_edd2_migration_steps'
wp option delete '_fluent_edd_failed_payment_logs'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fluent_cart_snapshot_job_%'"
wp option delete 'fluent_cart_has_tax_configure'
wp option delete '__fluent_cart_wc_migration_steps'
wp option delete '__fluent_cart_wc_category_map'
wp option delete '__fluent_cart_wc_attachment_map'
wp option delete '__fluent_cart_wc_brand_map'
wp option delete '_fluent_wc_failed_migration_logs'
wp option delete '_fluent_cart_db_version'
wp option delete 'siteUrl'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fc_bx_collection_%' OR option_name LIKE '_site_transient_fc_bx_collection_%'"
wp transient delete 'update_plugins'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'fluent_cart/scheduler/five_minutes_tasks'
wp cron event delete 'fluent_cart/scheduler/hourly_tasks'
wp cron event delete 'fluent_cart/scheduler/daily_tasks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-gallery-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-gallery-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-gallery-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-gallery-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fc_customer_photo_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fc_customer_photo_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fc_customer_photo_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fc_customer_photo_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fluent-products-gallery-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fluent-products-gallery-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fluent-products-gallery-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fluent-products-gallery-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fluent_cart_admin_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fluent_cart_admin_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fluent_cart_admin_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fluent_cart_admin_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
