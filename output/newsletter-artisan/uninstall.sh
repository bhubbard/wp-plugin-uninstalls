#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'newsletter_artisan'
wp option delete 'newsletter_theme'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'newsletter_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'newsletter_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'newsletter_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'newsletter_key'"
