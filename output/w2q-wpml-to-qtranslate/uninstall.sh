#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qtranslate_language_names'
wp option delete 'qtranslate_enabled_languages'
wp option delete 'qtranslate_default_language'
wp option delete 'qtranslate_term_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qtranslate_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_qts_slug_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_qts_slug_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_qts_slug_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qts_slug_%'"
