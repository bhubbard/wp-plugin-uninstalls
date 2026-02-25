#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_yith-paypal-ec_settings'
wp option delete 'ywsbs_suspend_for_failed_recurring_payment'
wp option delete 'yith_paypal_ec_warning_message_dismissed'
wp option delete 'yith_paypal_ec_subscription_warning_message_dismissed'
wp option delete 'yit_font_awesome_list'
wp option delete 'yit_dashicons_list'
wp option delete 'yit_plugin_fw_panel_wc_default_options_set'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'yit_recently_activated'
wp option delete 'yith_system_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id'"

# Delete Transients
wp transient delete 'yith-plugin-fw-latest-hc-articles'
wp transient delete 'yith-plugin-fw-system-status-tls-version'
wp transient delete 'yith-plugin-fw-system-status-output-ip'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'yith_paypal_ec_payment_renew_orders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_agreement_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_agreement_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_agreement_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_agreement_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paypal_transaction_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paypal_transaction_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paypal_transaction_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paypal_transaction_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_retry_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_retry_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_retry_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_retry_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-cats'"
