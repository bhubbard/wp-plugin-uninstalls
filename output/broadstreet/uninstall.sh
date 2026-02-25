#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'classic-editor-replace'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_broadstreet_video_security_warning_%' OR option_name LIKE '_site_transient_broadstreet_video_security_warning_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dp_original'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dp_original'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dp_original'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dp_original'"
