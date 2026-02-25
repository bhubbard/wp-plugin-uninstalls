#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7pp_show_earnings_notice'
wp option delete 'cf7pp_my_plugin_notice_shown'
wp option delete 'cf7pp_options'

# Delete Transients
wp transient delete '_cf7pp_extensions_feed'

# Clear Cron Jobs
wp cron event delete 'cf7pp_payment_check_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7pp_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7pp_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7pp_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7pp_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7pp_enable_stripe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7pp_enable_stripe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7pp_enable_stripe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7pp_enable_stripe'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7pp_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7pp_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7pp_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7pp_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7pp_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7pp_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7pp_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7pp_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7pp_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7pp_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7pp_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7pp_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7pp_gateway'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7pp_gateway'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7pp_gateway'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7pp_gateway'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7pp_stripe_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7pp_stripe_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7pp_stripe_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7pp_stripe_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gateway'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gateway'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gateway'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gateway'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7pp_ppcp_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7pp_ppcp_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7pp_ppcp_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7pp_ppcp_order_id'"
