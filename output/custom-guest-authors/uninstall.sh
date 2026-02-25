#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cga_enabled_post_types'
wp option delete 'cga_default_guest_author'
wp option delete 'cga_join_style'
wp option delete 'cga_apply_on'
wp option delete 'cga_cache_ttl'
wp option delete 'cga_suppress_schema'
wp option delete 'cga_cache_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cga_%' OR option_name LIKE '_site_transient_cga_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guest-author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guest-author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guest-author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guest-author'"
