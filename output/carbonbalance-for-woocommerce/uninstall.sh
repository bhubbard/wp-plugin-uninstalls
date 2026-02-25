#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'carbonbalance_button_template'
wp option delete 'carbonbalance_statistics'
wp option delete 'carbonbalance_optout'
wp option delete 'carbonbalance_cfp'
wp option delete 'carbonbalance_gif_feature'
wp option delete 'carbonbalance_ab_research'
wp option delete 'carbonbalance_widgetmark_footer'
wp option delete 'carbonbalance_checkout_placement'
wp option delete 'carbonbalance_disable_button_on_cart'
wp option delete 'carbonbalance_site_key'
wp option delete 'carbonbalance_site_skey'
wp option delete 'carbonbalance_id'
wp option delete 'carbonbalance_bbApi_token'
wp option delete 'carbonbalance_bbApi_token_refresh'
wp option delete 'carbonbalance_bbApi_token_expire'
wp option delete 'carbonbalance_compensation_count'
wp option delete 'carbonbalance_impact'
wp option delete 'carbonbalance_code'
wp option delete 'woocommerce_currency'
wp option delete 'carbonbalance_bbApi_id'
wp option delete 'carbonbalance_bbApi_pass'

# Clear Cron Jobs
wp cron event delete 'carbonbalance_participation_cron_hook'
wp cron event delete 'carbonbalance_clv_cron_hook'
wp cron event delete 'carbonbalance_ab_results_cron_hook'
wp cron event delete 'update_merchant_cron_hook'
wp cron event delete 'carbonbalance_impact_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
