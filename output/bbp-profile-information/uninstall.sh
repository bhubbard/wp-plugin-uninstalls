#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rpi_settings'
wp option delete 'rpi_settings_dropdown'
wp option delete '$rpi_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'rpi_label%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'rpi_label%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'rpi_label%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rpi_label%'"
