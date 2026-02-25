#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'memberstack_wp_app_id'
wp option delete 'memberstack_app_id'
wp option delete 'memberstack_wp_gated_content'

# Delete Transients
wp transient delete 'memberstack_wp_gated_content'

