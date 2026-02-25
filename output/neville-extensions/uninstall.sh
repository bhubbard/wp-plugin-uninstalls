#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nevillex-instagram-settings'

# Delete Transients
wp transient delete 'nevillex_instagram_is_configured'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nevillex_title_design_output'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nevillex_title_design_output'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nevillex_title_design_output'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nevillex_title_design_output'"
