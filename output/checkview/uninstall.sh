#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'checkview_log_options'
wp option delete 'captcha_ip_range_opt'
wp option delete 'i13_recapcha_ip_to_skip_captcha'
wp option delete 'checkview_hide_me'
wp option delete 'checkview_advance_options'
wp option delete 'checkview_api_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'CF_TEST_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wsf_entry_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wsf_frm_id'"
wp option delete 'cleantalk_data'
wp option delete 'disable_actions'
wp option delete 'disable_email_receipt'
wp option delete 'woocommerce_checkview_settings'
wp option delete 'disable_webhooks'
wp option delete 'checkview_woo_product_id'
wp option delete 'checkview_test_user'
wp option delete 'checkview_admin_menu_title'

# Delete Transients
wp transient delete 'checkview_forms_test_transient'
wp transient delete 'checkview_store_orders_transient'
wp transient delete 'checkview_store_products_transient'
wp transient delete 'checkview_store_shipping_transient'
wp transient delete 'checkview_forms_list_transient'
wp transient delete 'checkview_saas_pk'
wp transient delete 'checkview_saas_ip_address'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_checkview_whitelisted_ips_%' OR option_name LIKE '_site_transient_checkview_whitelisted_ips_%'"
wp transient delete 'checkview_whitelisted_ips_spamfirewall'
wp transient delete 'checkview_whitelisted_ips_antispam'
wp transient delete 'checkview_activation_notification'

# Clear Cron Jobs
wp cron event delete 'checkview_nonce_cleanup_cron'
wp cron event delete 'checkview_delete_orders_action'
wp cron event delete 'checkview_delete_table_cron_hook'
wp cron event delete 'checkview_options_cleanup_cron'
wp cron event delete 'checkview_rotate_user_credentials'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpforms_form_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpforms_form_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpforms_form_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpforms_form_locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hash'"
