#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccfbw_install_date'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete '_site_transient_envato_market_themes'
wp option delete 'popup_data'
wp option delete 'notices_data'
wp option delete 'notification_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'stm_mailchimp_integration_member_data_%'"
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_tax_total_display'

# Delete Transients
wp transient delete 'stm_buy_pro_notice_setting'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_custom_%' OR option_name LIKE '_site_transient_custom_%'"
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_notice_setting' OR option_name LIKE '_site_transient_%_notice_setting'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_themes' OR option_name LIKE '_site_transient_%_themes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp_org_%' OR option_name LIKE '_site_transient_wp_org_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
