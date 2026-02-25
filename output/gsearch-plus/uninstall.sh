#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gomo_searchplus_options'
wp option delete 'gee_searchplus_options'

# Delete Transients
wp transient delete 'geesearch_dismissed_notices'

