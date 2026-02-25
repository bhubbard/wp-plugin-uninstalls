#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mbm_credibility_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mbm_credibility_footnotes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mbm_credibility_footnotes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mbm_credibility_footnotes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mbm_credibility_footnotes'"
