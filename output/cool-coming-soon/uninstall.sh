#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cool_coming_soon_data'
wp option delete 'cool_coming_soon_display'

# Delete Transients
wp transient delete 'ccs_cool_coming_soon_activation_redirect'

