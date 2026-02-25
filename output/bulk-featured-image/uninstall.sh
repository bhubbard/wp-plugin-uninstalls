#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bfi_settings'

# Delete Transients
wp transient delete '_bfie_activation_redirect'

