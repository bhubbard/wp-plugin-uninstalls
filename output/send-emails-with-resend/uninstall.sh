#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'resend_settings'

# Delete Transients
wp transient delete 'settings_errors'

