#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'horizontal-scrolling-announcements'
wp option delete 'horizontal-scrolling-roles'

# Delete Transients
wp transient delete '_hsas_activation_redirect'

