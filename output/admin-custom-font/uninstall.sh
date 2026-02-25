#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'admin_custom_font_version'
wp option delete 'admin_custom_font_family'
wp option delete 'admin_custom_font_size'
wp option delete 'admin_custom_font_weight'

