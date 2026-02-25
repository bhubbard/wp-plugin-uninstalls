#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ae_admin_customizer_options'
wp option delete 'ae_admin_customizer_color_options'
wp option delete 'ae_admin_customizer_logreg_options'
wp option delete 'ae_admin_customizer_custom_css'

