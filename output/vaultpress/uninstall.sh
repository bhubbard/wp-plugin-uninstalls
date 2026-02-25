#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_vp_signatures'
wp option delete '_vp_current_scan'
wp option delete '_vp_ignore_symlinks'
wp option delete '_vp_batch_file_size'
wp option delete 'vaultpress'
wp option delete 'vaultpress_auto_connect'
wp option delete 'vaultpress_connection'
wp option delete 'vaultpress_key'
wp option delete 'vaultpress_secret'
wp option delete 'vaultpress_service_ips'
wp option delete 'vaultpress_allow_forwarded_for'
wp option delete 'vaultpress_service_ips_external_cidr'
wp option delete '_vp_config_option_name_ignore'
wp option delete '_vp_config_post_meta_name_ignore'
wp option delete '_vp_config_should_ignore_files'
wp option delete 'vaultpress_auto_register'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_vp_ai_ping_%'"
wp option delete 'current_theme'
wp option delete 'vaultpress_service_ips_external'

# Clear Cron Jobs
wp cron event delete 'vp_scan_site'
wp cron event delete 'vp_scan_next_batch'

