#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hide_menu_bh_plugin'
wp option delete 'hide_top_menu_bh_plugin'
wp option delete 'hide_sub_menu_bh_plugin'
wp option delete 'wp-version-hide'
wp option delete 'hide-plugins'
wp option delete 'admin-bar-logo'
wp option delete 'login-logo'
wp option delete 'wp-admin-footer-text'
wp option delete 'wp-admin-bar-howdy-text'
wp option delete 'menu_order_bh_plugin'

