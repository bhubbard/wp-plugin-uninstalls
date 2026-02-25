#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mfat_theme_options'
wp option delete 'mfat_login_options'
wp option delete 'mfat_settings_options'

# Delete Transients
wp transient delete 'mfat_welcome_screen_activation_redirect'

