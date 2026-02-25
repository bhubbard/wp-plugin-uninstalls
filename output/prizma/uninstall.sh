#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fem-inc-widget-options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'prizma-widget-meta-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'prizma-widget-meta-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'prizma-widget-meta-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'prizma-widget-meta-%'"
