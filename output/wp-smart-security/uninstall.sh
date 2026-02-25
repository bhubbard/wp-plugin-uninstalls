#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'si_captcha'
wp option delete 'bitset_wpspro'
wp option delete 'si_captcha_comment'
wp option delete 'wpspro_file_log'
wp option delete 'wpspro_intrusion_warning'
wp option delete 'WPSPRO_options'
wp option delete 'WPSPRO_Login_Slug'
wp option delete 'WPSPRO_versions'
wp option delete 'wpspro_filecheck'
wp option delete 'wpspro_awaymode'

# Delete Transients
wp transient delete 'wpspro_away'
wp transient delete 'bitset_wpspro_backup'

# Clear Cron Jobs
wp cron event delete 'wp_version_check'
wp cron event delete 'wp_update_plugins'
wp cron event delete 'wp_update_themes'
wp cron event delete 'wpspro_backup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpspro_enable_ssl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpspro_enable_ssl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpspro_enable_ssl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpspro_enable_ssl'"
