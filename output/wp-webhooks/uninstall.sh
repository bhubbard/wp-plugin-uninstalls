#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpwhpro_activate_translations'
wp option delete 'wpwhpro_activate_debug_mode'
wp option delete 'wpwhpro_deactivate_post_delay'
wp option delete 'wpwhpro_show_main_menu'
wp option delete 'wpwhpro_reset_data'
wp option delete 'wpwhpro_trigger_secret'
wp option delete 'wsblc_options'
wp option delete 'wppb_general_settings'

# Delete Transients
wp transient delete 'wpwhcf7_preserved_files'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'wpwh_daily_maintenance'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_subscription_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_subscription_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_subscription_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_subscription_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_variable_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_variable_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_variable_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_variable_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_download_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_download_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_download_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_download_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_bundled_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_bundled_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_bundled_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_bundled_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_bundled_products_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_bundled_products_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_bundled_products_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_bundled_products_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variable_pricing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variable_pricing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variable_pricing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variable_pricing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_default_price_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_default_price_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_default_price_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_default_price_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_hide_purchase_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_hide_purchase_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_hide_purchase_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_hide_purchase_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_download_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_download_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_download_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_download_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wppb_admin_approval_link_param'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wppb_admin_approval_link_param'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wppb_admin_approval_link_param'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wppb_admin_approval_link_param'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpwhpro_create_post_temp_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpwhpro_create_post_temp_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpwhpro_create_post_temp_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpwhpro_create_post_temp_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpwhpro_create_post_temp_status_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpwhpro_create_post_temp_status_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpwhpro_create_post_temp_status_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpwhpro_create_post_temp_status_%'"
