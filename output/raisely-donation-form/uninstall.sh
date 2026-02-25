#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'raisely_auth_method'
wp option delete 'raisely_api_key'

# Delete Transients
wp transient delete 'raisely-setup-notice'

