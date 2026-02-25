#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_maintenance_settings_countdown'
wp option delete 'wp_maintenance_settings_colors'
wp option delete 'wp_maintenance_active'
wp option delete 'wp_maintenance_version'
wp option delete 'wp_maintenance_settings_css'
wp option delete 'wp_maintenance_settings'
wp option delete 'wp_maintenance_settings_picture'
wp option delete 'wp_maintenance_settings_seo'
wp option delete 'wp_maintenance_settings_socialnetworks'
wp option delete 'wp_maintenance_list_socialnetworks'
wp option delete 'wp_maintenance_settings_footer'
wp option delete 'wp_maintenance_settings_options'
wp option delete 'wp_maintenance_limit'
wp option delete 'wp_maintenance_social_options'
wp option delete 'wp_maintenance_ipaddresses'
wp option delete 'default_post_edit_rows'

