#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_upsell_displayed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_xl_transient_%'"
wp option delete 'bwf_is_opted'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_milestone_messages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_milestone_version'"
wp option delete 'sv_wc_apple_pay_cert_path'
wp option delete 'sv_wc_apple_pay_display_locations'
wp option delete 'woocommerce_default_country'
wp option delete 'sv_wc_apple_pay_enabled'
wp option delete 'sv_wc_apple_pay_test_mode'
wp option delete 'sv_wc_apple_pay_merchant_id'
wp option delete 'sv_wc_apple_pay_payment_gateway'
wp option delete 'sv_wc_apple_pay_button_style'
wp option delete 'woocommerce_calc_shipping'
wp option delete 'bwf_heartbeat_run'
wp option delete 'woocommerce_currency'
wp option delete 'disable_rest_api_options'
wp option delete 'woocs'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woofunnels_plugins_info'
wp option delete '_bwf_last_offsets'
wp option delete '_bwf_offset'
wp option delete '_bwf_contacts_last_offsets'
wp option delete '_bwf_contacts_offset'
wp option delete '_bwf_db_table_list'
wp option delete '_bwf_db_upgrade'
wp option delete '_bwf_order_threshold'
wp option delete '_bwf_db_version'
wp option delete '_bwf_contacts_threshold'
wp option delete '_bwf_migrate_contacts_indexing'
wp option delete '_bwf_created_tables'
wp option delete 'bwf_needs_rewrite'
wp option delete 'bwf_gen_config'
wp option delete 'woofunnels_admin_notices'
wp option delete '_bwf_fb_templates'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wf_notification_list_%'"
wp option delete 'woofunnels_optin_ref'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woofunnels_track_day'
wp option delete 'woofunnel_hide_update_notice'
wp option delete '_bwf_upgrade_1_9_13'

# Delete Transients
wp transient delete 'woofunnels_get_modules'
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'bwf_maybe_track_usage_scheduled'
wp cron event delete 'woofunnels_maybe_track_usage_scheduled'
wp cron event delete 'woofunnels_optin_success_track_scheduled'
wp cron event delete 'woofunnels_license_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_xl_nmi_retries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_xl_nmi_retries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_xl_nmi_retries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_xl_nmi_retries'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%payment_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%payment_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%payment_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%payment_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bwf_in_funnel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bwf_in_funnel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bwf_in_funnel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bwf_in_funnel'"
