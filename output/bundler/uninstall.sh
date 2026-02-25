#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woobundles_db_version'
wp option delete 'bdlr_install'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete 'bdlr_pro_just_activated'
wp transient delete 'bdlr_lite_just_deactivated'
wp transient delete 'bdlr_lite_just_activated'
wp transient delete 'bdlr_first_time_activated'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_preview_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_preview_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_preview_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_preview_product_id'"
