#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_sms_on_post_publish'
wp option delete 'wp_sms_on_user_login'
wp option delete 'wp_sms_on_plugin_update'
wp option delete 'wp_sms_on_plugin_install'
wp option delete 'wp_sms_on_post_update'
wp option delete 'wp_sms_on_theme_install'
wp option delete 'wp_sms_on_theme_update'

