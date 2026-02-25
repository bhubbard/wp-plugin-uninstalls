#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bept_allow_tracking'

# Delete Transients
wp transient delete 'bulk_edit_post_title_action'
wp transient delete 'bulk_edit_post_title_ids'
wp transient delete 'bept_tracking_dismissed'

