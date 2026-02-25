#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ulf_options'
wp option delete 'recaptcha'
wp option delete 'ulf_widget_feeds_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ulf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ulf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ulf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ulf'"
