#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_ssync_allow_ext'
wp option delete 'wp_ssync_username'
wp option delete 'wp_ssync_password'
wp option delete 'wp_ssync_key'
wp option delete 'wp_ssync_secret'
wp option delete 'wp_ssync_show_form'
wp option delete 'wp_ssync_delete_file'
wp option delete 'wp_ssync_thank_message'
wp option delete 'wp_ssync_path'
wp option delete 'wp_ssync_temp_path'
wp option delete 'wp_ssync_menu_pref'
wp option delete 'wp_ssync_version_number'

