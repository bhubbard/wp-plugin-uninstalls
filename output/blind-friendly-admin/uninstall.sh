#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bastgs_settings'
wp option delete 'my_admin_theme_2_settings'
wp option delete 'bastgs_settings[bastgs_select_field_10]'

