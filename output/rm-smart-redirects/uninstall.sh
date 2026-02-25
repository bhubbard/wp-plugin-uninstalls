#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rmsmart_404_last_viewed'
wp option delete 'rmsmart_enable_fallback'
wp option delete 'rmsmart_default_type'

# Delete Transients
wp transient delete 'rmsmart_slug_changed_notice'

