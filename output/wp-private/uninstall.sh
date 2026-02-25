#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_private_settings'
wp option delete 'wp_private_replacement_type'
wp option delete 'wp_private_before_html'
wp option delete 'wp_private_after_html'
wp option delete 'wp_private_not_authorized_text'
wp option delete 'wp_private_selected_users'
wp option delete 'wp_private_custom_login_page_url'
wp option delete 'wp_private_linkback_enable'

