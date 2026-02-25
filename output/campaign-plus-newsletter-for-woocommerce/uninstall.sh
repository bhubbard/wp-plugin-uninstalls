#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpnfwc_webform_settings'
wp option delete 'cpnfwc_cart_abandone_settings'
wp option delete 'plugin_status_campaign_plus'
wp option delete 'compaign_syn_prodcuts_list'
wp option delete 'compaign_syn_customers_list'
wp option delete 'compaign_syn_orders_list'

# Clear Cron Jobs
wp cron event delete 'cpnfwc_shopCustomerScheduler'
wp cron event delete 'cpnfwc_shopProductsScheduler'
wp cron event delete 'cpnfwc_shopOrdersScheduler'
wp cron event delete 'cpnfwc_shopForceContact'
wp cron event delete 'cpnfwc_shopForceProductsSync'
wp cron event delete 'cpnfwc_shopForceOrdersSync'
wp cron event delete 'cpnfwc_campaignPlusDailySync'
wp cron event delete 'CampaignCartAbandone'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'campaignplus_newsletter_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'campaignplus_newsletter_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'campaignplus_newsletter_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'campaignplus_newsletter_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
