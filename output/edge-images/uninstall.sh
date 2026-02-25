#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edge_images_rewrite_rules_flushed'
wp option delete 'edge_images_bunny_subdomain'
wp option delete 'edge_images_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_edge_images_css_%' OR option_name LIKE '_site_transient_edge_images_css_%'"

