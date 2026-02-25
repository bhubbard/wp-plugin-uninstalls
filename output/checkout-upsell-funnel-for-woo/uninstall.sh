#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'viwcuf_woo_checkout_upsell_funnel'
wp option delete 'woocommerce_queue_flush_rewrite_rules'
wp option delete 'viwcuf_upsell_funnel_prefix'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_prefix'"
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'woocommerce_enable_review_rating'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp transient delete 'villatheme_call'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'
wp transient delete 'villatheme_ads'

