#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_sosere_activated'
wp option delete 'plugin_sosere'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'soseredbviewedpostscache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'soseredbviewedpostscache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'soseredbviewedpostscache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'soseredbviewedpostscache'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'soseredbviewedpostscachedate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'soseredbviewedpostscachedate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'soseredbviewedpostscachedate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'soseredbviewedpostscachedate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'soseredbviewedposts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'soseredbviewedposts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'soseredbviewedposts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'soseredbviewedposts'"
