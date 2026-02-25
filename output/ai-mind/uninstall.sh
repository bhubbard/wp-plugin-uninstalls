#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mind_settings'

# Delete Transients
wp transient delete '_mind_welcome_screen_activation_redirect'

