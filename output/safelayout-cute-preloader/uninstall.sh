#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'safelayout_preloader_options'
wp option delete 'safelayout_preloader_options_meta'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'safelayout_preloader_special_post%'"
wp option delete 'safelayout_preloader_options_upgrade'
wp option delete 'safelayout_preloader_options_rate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'safelayout_preloader_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'safelayout_preloader_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'safelayout_preloader_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'safelayout_preloader_shortcode'"
