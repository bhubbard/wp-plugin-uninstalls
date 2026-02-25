#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kasppaga_wallet_configured'
wp option delete 'kaspa_rate_last_updated'
wp option delete 'kasppaga_wallet_kpub'
wp option delete 'kasppaga_wallet_address'
wp option delete 'kasppaga_next_address_index'
wp option delete 'kasppaga_wallet_setup_date'
wp option delete 'kasppaga_address_type'
wp option delete 'kasppaga_wallet_data'
wp option delete 'woocommerce_kaspa_settings'

# Delete Transients
wp transient delete 'kaspa_rate_cache'

# Clear Cron Jobs
wp cron event delete 'kasppaga_poll_payments'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kasppaga_review_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kasppaga_review_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kasppaga_review_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kasppaga_review_notice_dismissed'"
