#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'commentby_settings'

# Delete Transients
wp transient delete 'commentby_activation_notice'

