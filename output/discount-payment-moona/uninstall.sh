#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_discount-payment-moona_settings'
wp option delete 'moona_disable_cache_until_timestamp'

# Clear Cron Jobs
wp cron event delete 'moona_cancel_pending_orders'
wp cron event delete 'moona_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mship'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mship'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mship'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mship'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_moona_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_moona_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_moona_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_moona_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_url_to_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_url_to_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_url_to_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_url_to_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transfer_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transfer_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transfer_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transfer_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_has_moona_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_has_moona_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_has_moona_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_has_moona_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_moona_discount_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_moona_discount_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_moona_discount_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_moona_discount_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_moona_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_moona_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_moona_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_moona_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_paid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_paid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_paid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_paid'"
