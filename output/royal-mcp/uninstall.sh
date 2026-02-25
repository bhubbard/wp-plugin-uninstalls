#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'royal_mcp_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_royal_mcp_session_%' OR option_name LIKE '_site_transient_royal_mcp_session_%'"
wp transient delete 'royal_mcp_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'royal_mcp_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'royal_mcp_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'royal_mcp_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'royal_mcp_dismissed_notices'"
