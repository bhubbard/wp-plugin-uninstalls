#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmjgu_batch_optimization_intensive_resources_consumption_mode'
wp option delete 'wpmjgu_batch_optimization_max_simultaneous_processes'
wp option delete 'wpmjgu_mode'
wp option delete 'wpmjgu_path_filter'
wp option delete 'wpmjgu_jpeg_encoder_location'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_errorvalue'"
wp option delete 'wpmjgu_plugin_working_directory'
wp option delete 'wpmjgu_default_jpeg_quality'
wp option delete 'wpmjgu_jpeg_compression_min_benefit'
wp option delete 'wpmjgu_ssh_server'
wp option delete 'wpmjgu_ssh_port'
wp option delete 'wpmjgu_ssh_username'
wp option delete 'wpmjgu_ssh_password'
wp option delete 'wpmjgu_ssh_working_directory'
wp option delete 'wpmjgu_mozjpeg_encoder_directory'
wp option delete 'wpmjgu_guetzli_encoder_directory'
wp option delete 'wpmjgu_webp_encoder_directory'
wp option delete 'wpmjgu_settings_validation_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmjgu_webp_duplicate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmjgu_webp_duplicate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmjgu_webp_duplicate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmjgu_webp_duplicate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmjgu_optimized'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmjgu_optimized'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmjgu_optimized'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmjgu_optimized'"
