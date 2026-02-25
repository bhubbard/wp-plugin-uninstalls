#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pageviews_config'

# Delete Transients
wp transient delete 'pageviews:rest-auth'

