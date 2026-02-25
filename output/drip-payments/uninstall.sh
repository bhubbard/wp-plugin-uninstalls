#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'drip_payments_actual_key'
wp option delete 'drip_payments_do_activation_redirect'
wp option delete 'drip_payments_server_status'
wp option delete 'drip_payments_actual_cashback'
wp option delete 'drip_payments_merchant_cnpj_from_api_key'
wp option delete 'drip_payments_is_sandbox'
wp option delete 'drip_payments_single_product_banner_is_active'
wp option delete 'drip_payments_show_configuration_error'
wp option delete 'drip_payments_minutes_before_cancel_order'

# Clear Cron Jobs
wp cron event delete 'drip_check_to_remove_pending_orders_every_minute'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'drip_paid_checkout_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'drip_paid_checkout_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'drip_paid_checkout_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'drip_paid_checkout_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'drip_checkout_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'drip_checkout_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'drip_checkout_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'drip_checkout_url'"
