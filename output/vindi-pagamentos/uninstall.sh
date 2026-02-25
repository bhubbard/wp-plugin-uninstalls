#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vindi-pagamentos-notification-token'
wp option delete 'vindi-pagamentos-success_status'
wp option delete 'vindi-pagamentos-order_notes_visibility'
wp option delete 'vindi-pagamentos-environment'
wp option delete 'vindi-pagamentos-token'
wp option delete 'vindi-pagamentos-text_color'
wp option delete 'vindi-pagamentos-order_prefix'
wp option delete 'vindi-pagamentos-store-tested'
wp option delete 'vindi-pagamentos-enable_cancel_refund'
wp option delete 'vindi-pagamentos-consumer_key'
wp option delete 'vindi-pagamentos-consumer_secret'
wp option delete 'vindi-pagamentos-document_field'
wp option delete 'vindi-pagamentos-person_type_display'
wp option delete 'vindi-pagamentos-enable_payment_link'
wp option delete 'vindi-pagamentos-one_click_purchase'
wp option delete 'vindi-pagamentos-enable_saved_cards_vindi'
wp option delete 'vindi-pagamentos-show_icons'
wp option delete 'vindi-pagamentos-show_discount'
wp option delete 'vindi-pagamentos-show_discount_text'
wp option delete 'vindi-pagamentos-logs'
wp option delete 'vindi-pagamentos-authorization-code'
wp option delete 'vindi-pagamentos-store-tested-date'
wp option delete 'vindi_pagamentos_environment'
wp option delete 'vindi-pagamentos-plugin-migration'
wp option delete 'woocommerce_vindi-pagamentos-credit_settings'
wp option delete 'vindi-pagamentos-refresh_token'
wp option delete 'payment_heading'
wp option delete 'payment_subject'
wp option delete 'heading'
wp option delete 'subject'

# Delete Transients
wp transient delete 'vindi_pagamentos_access_token'
wp transient delete 'update_plugins'
wp transient delete 'vindi_max_installments_limit'

# Clear Cron Jobs
wp cron event delete 'vindi_retry_renewal_attempt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vindi_transaction_cancelled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vindi_transaction_cancelled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vindi_transaction_cancelled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vindi_transaction_cancelled'"
