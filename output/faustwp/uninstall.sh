#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'faustwp_settings'
wp option delete 'rewrite_rules'
wp option delete 'faustwp_current_version'
wp option delete 'wpe_headless'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_scrape_key_%' OR option_name LIKE '_site_transient_scrape_key_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_admin_bar_front'"
