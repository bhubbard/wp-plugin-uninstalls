#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_pls_simple_method'
wp option delete 'wp_pls_root'
wp option delete 'wp_pls_load_external'
wp option delete 'wp_pls_process_gif_images'
wp option delete 'wp_pls_db_version'
wp option delete 'wp_pls_version'
wp option delete 'wp_pls_found_root'
wp option delete 'wp_pls_has_updated_files'
wp option delete 'wp_pls_has_gd'
wp option delete 'wp_pls_cant_update'

