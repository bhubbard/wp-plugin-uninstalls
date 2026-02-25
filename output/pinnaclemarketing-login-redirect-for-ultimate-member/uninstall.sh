#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'umlr_redirect_url'

# Delete Transients
wp transient delete 'umlr_missing_dependency_notice'

