#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zillow_screen_name'
wp option delete 'personal_info'
wp option delete 'dssearchagent-wordpress-edition'
wp option delete 'dsidxpress-custom-options'
wp option delete 'rewrite_rules'
wp option delete 'dsidxpress'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsidxpress-assembled-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsidxpress-assembled-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsidxpress-assembled-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsidxpress-assembled-url'"
