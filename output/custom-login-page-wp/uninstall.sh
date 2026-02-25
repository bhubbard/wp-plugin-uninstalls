#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seed_cl_customizer_settings'
wp option delete 'seed_cl_settings_1'
wp option delete 'seed_cl_settings_2'
wp option delete 'seed_cl_settings_4'
wp option delete 'seed_cl_settings_content'

# Delete Transients
wp transient delete '_seed_cl_welcome_screen_activation_redirect'

