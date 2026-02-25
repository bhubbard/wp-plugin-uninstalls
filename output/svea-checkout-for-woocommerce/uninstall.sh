#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sco_request_violation'
wp option delete 'woocommerce_myaccount_svea_subscription_payment_method_endpoint'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'sco_last_push'
wp option delete 'svea_checkout_admin_notices'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_checkout_company_field'
wp option delete 'woocommerce_checkout_address_2_field'
wp option delete 'woocommerce_checkout_phone_field'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_email_footer_text'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_woocommerce_sco_country_credentials_status_code_%' OR option_name LIKE '_site_transient_woocommerce_sco_country_credentials_status_code_%'"

# Clear Cron Jobs
wp cron event delete 'sco_check_pa_order_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_svea_co_minimum_age'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_svea_co_minimum_age'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_svea_co_minimum_age'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_svea_co_minimum_age'"
