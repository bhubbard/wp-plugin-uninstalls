#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mp_customizer_backups'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp option delete 'mp_core_theme_redirect_after_install'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mp_core_plugin_checker_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_status_valid'"

