#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'amelia_settings'
wp option delete 'amelia_stash'
wp option delete 'amelia_show_wpdt_promo'
wp option delete 'classic-editor-replace'

# Delete Transients
wp transient delete 'amelia_activation_redirect'
wp transient delete 'amelia_square_access_token'

# Clear Cron Jobs
wp cron event delete 'amelia_square_access_token_refresh'

