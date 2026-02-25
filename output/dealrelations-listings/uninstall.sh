#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dealrelations_rewrite_flushed'
wp option delete 'dealrelations_listings_settings'
wp option delete 'dealrelations_listings_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css_file'"
