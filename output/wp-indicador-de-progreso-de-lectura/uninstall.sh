#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpipl_color_barra_progreso'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_color_barra_progreso'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'wpipl_version'

