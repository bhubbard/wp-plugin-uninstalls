#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'remaaire_redirect_url'

# Delete Transients
wp transient delete 'remaaire_activation_redirect_url'

