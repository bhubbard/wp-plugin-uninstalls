#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'formsdeck_code'
wp option delete 'formsdeck_location'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formsdeck_getting_started_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formsdeck_getting_started_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formsdeck_getting_started_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formsdeck_getting_started_notice'"
