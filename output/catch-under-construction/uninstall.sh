#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'catch_under_construction_options'
wp option delete 'ctp_options'

# Delete Transients
wp transient delete '_catch_coming_soon_screen_activation_redirect'

