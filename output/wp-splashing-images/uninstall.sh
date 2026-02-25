#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'splashing_access_token'

# Delete Transients
wp transient delete 'splashing_featured'
wp transient delete 'splashing_latest'

