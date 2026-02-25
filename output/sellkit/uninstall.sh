#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sellkit-partner-offer-theme-dismissed'
wp option delete 'sellkit_global_checkout_id'
wp option delete 'rewrite_rules'
wp option delete 'sellkit-installed-time'
wp option delete 'delete_data'
wp option delete 'sellkit_funnel_permalink_base'
wp option delete 'sellkit'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_bacs_accounts'
wp option delete 'woocommerce_currency_pos'
wp option delete 'sellkit_pro_delete_data'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'sellkit_update_rfm_score'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sellkit_personalised_coupon_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sellkit_personalised_coupon_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sellkit_personalised_coupon_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sellkit_personalised_coupon_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sellkit_steps'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sellkit_steps'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sellkit_steps'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sellkit_steps'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nodes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nodes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nodes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nodes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'step_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'step_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'step_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'step_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'sellkit_admin_promotion_dismissed_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'sellkit_admin_promotion_dismissed_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'sellkit_admin_promotion_dismissed_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sellkit_admin_promotion_dismissed_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sellkit_post_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sellkit_post_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sellkit_post_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sellkit_post_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'filters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sellkit_checkout_widget_custom_field_of_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sellkit_checkout_widget_custom_field_of_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sellkit_checkout_widget_custom_field_of_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sellkit_checkout_widget_custom_field_of_order'"
