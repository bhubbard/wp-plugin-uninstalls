#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aquiline_comment_country_flags_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aquiline_comment_country_flags_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aquiline_comment_country_flags_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aquiline_comment_country_flags_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aquiline_comment_country_flags_key'"
