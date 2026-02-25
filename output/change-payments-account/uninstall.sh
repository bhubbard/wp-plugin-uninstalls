#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jetpack_private_options'
wp option delete 'jetpack_options'
wp option delete 'cpy_payments_error_tokens'
wp option delete '_cpy_current_token'
wp option delete 'carbon_custom_sidebars'

# Delete Transients
wp transient delete 'wcpay_account_data'

# Clear Cron Jobs
wp cron event delete 'cpy_tokens_change_schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_payments_token_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_payments_token_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_payments_token_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_payments_token_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
