#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acmebot_secret'

# Delete Transients
wp transient delete 'acmebot_activation_redirect'
wp transient delete 'acmebot_settings_errors'

