#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'speculative_loader_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_speculative_loader_error_%' OR option_name LIKE '_site_transient_speculative_loader_error_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_speculative_loader_speculative_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_speculative_loader_speculative_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_speculative_loader_speculative_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_speculative_loader_speculative_urls'"
