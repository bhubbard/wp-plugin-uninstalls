#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ss4seo_custom_taxs'
wp option delete 'wpseo_titles'
wp option delete 'rank-math-options-titles'
wp option delete 'wpseo'
wp option delete 'rank_math_modules'
wp option delete 'rank-math-options-sitemap'
wp option delete 'active_sitewide_plugins'
wp option delete 'carbon_custom_sidebars'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
