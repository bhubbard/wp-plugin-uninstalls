#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'syntaxhighlighter_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_syntaxhighlighter_encoded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_syntaxhighlighter_encoded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_syntaxhighlighter_encoded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_syntaxhighlighter_encoded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'syntaxhighlighter_encoded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'syntaxhighlighter_encoded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'syntaxhighlighter_encoded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'syntaxhighlighter_encoded'"
