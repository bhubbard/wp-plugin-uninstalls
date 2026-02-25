#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prowc_product_countdown_enabled'
wp option delete 'woocommerce_version'
wp option delete 'prowc_product_countdown_disable_product_action_purchasable'
wp option delete 'prowc_product_countdown_add_admin_column'
wp option delete 'prowc_product_countdown_format_human_time_diff'
wp option delete 'prowc_product_countdown_time_format_upper_limit'
wp option delete 'prowc_product_countdown_time_format'
wp option delete 'prowc_product_countdown_format'
wp option delete 'prowc_product_countdown_style'
wp option delete 'prowc_product_countdown_message_on_time_finished'
wp option delete 'prowc_product_countdown_update_rate_ms'
wp option delete 'prowc_product_countdown_reload_page'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'prowc_product_countdown_version'
wp option delete 'prowc_product_countdown_plugin_notice_nopemaybelater'
wp option delete 'prowc_product_countdown_plugin_notice_remindlater'
wp option delete 'prowc_product_countdown_plugin_reviewtrack'
wp option delete 'prowc_pcfwc_activation_time'
wp option delete 'prowc_product_countdown_plugin_notice_dismissed'
wp option delete 'prowc_pcfwc_notice_remindlater_rating'
wp option delete 'prowc_pcfwc_notice_dismissed_rating'
wp option delete 'prowc_product_countdown_plugin_notice_alreadydid'

