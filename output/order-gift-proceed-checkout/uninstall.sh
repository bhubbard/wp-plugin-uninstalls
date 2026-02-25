#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'wc_settings_tab_btn_text_color'
wp option delete 'wc_settings_tab_btn_border_color'
wp option delete 'wc_settings_tab_btn_bg_color'
wp option delete 'wc_settings_enable_btn'
wp option delete 'wc_settings_tab_button_text'
wp option delete 'ogpc_proceed_order'
wp option delete 'wc_gift_proceed_installed'
wp option delete 'wc_gift_proceed_version'

