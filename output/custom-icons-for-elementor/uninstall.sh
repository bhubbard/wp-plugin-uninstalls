#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%elementor_icons_settings'"
wp option delete 'eci_css_timestamp'
wp option delete 'ec_icons_fonts'

