#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_payflex_settings'
wp option delete 'payflex_settings_last_saved'

# Delete Transients
wp transient delete 'payflex_access_token'
wp transient delete 'payflex_access_token_date'
wp transient delete 'payflex_configuration_response'

# Clear Cron Jobs
wp cron event delete 'partpay_do_cron_jobs'
wp cron event delete 'payflex_do_cron_jobs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payflex_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payflex_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payflex_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payflex_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_partpay_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_partpay_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_partpay_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_partpay_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payflex_order_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payflex_order_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payflex_order_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payflex_order_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_partpay_order_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_partpay_order_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_partpay_order_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_partpay_order_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payflex_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payflex_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payflex_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payflex_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_partpay_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_partpay_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_partpay_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_partpay_order_id'"
