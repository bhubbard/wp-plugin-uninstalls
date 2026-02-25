#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sideosurl'
wp option delete 'token'
wp option delete 'did'
wp option delete 'templateID'
wp option delete 'showlogo'
wp option delete 'disablesubmit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'did'"
