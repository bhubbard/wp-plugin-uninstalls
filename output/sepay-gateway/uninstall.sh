#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_sepay_settings'
wp option delete 'wc_sepay_webhook_id'
wp option delete 'wc_sepay_last_connected_at'
wp option delete 'wc_sepay_access_token'
wp option delete 'wc_sepay_refresh_token'
wp option delete 'wc_sepay_token_expires'
wp option delete 'wc_sepay_webhook_api_key'

# Delete Transients
wp transient delete 'wc_sepay_oauth_state'
wp transient delete 'wc_sepay_rate_limited'
wp transient delete 'wc_sepay_refresh_failure'
wp transient delete 'wc_sepay_oauth_url'
wp transient delete 'wc_sepay_oauth_rate_limited'
wp transient delete 'wc_sepay_bank_accounts'
wp transient delete 'wc_sepay_company'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_sepay_bank_account_%' OR option_name LIKE '_site_transient_wc_sepay_bank_account_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_sepay_webhook_%' OR option_name LIKE '_site_transient_wc_sepay_webhook_%'"
wp transient delete 'wc_sepay_user_info'
wp transient delete 'wc_sepay_activation_redirect'

