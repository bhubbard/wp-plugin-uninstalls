#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbte_sc_hidden_promotion_banners'
wp option delete 'wt_iew_admin_modules'
wp option delete 'wbfte_promotion_banner_version'
wp option delete 'wt_hide_invoice_cta_banner'
wp option delete 'wt_hide_smart_coupon_cta_banner'
wp option delete 'wt_hide_product_ie_cta_banner'
wp option delete 'wt_iew_advanced_settings'
wp option delete 'wt_u_iew_is_active'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_request'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_date'"
wp option delete 'wt_u_iew_basic_json_migration_complete'

# Delete Transients
wp transient delete 'wt_total_order_count'
wp transient delete '_user_welcome_screen_activation_redirect'

