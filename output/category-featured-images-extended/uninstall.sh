#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cks_cfix_exclude_category'
wp option delete 'cks_cfix_fallback_category'
wp option delete 'cks_cfix_version'
wp option delete 'cks_cfix_use_yoast_primary'
wp option delete 'cks_cfix_featured_images'
wp option delete 'cfi_featured_images'
wp option delete 'cfix_featured_images'
wp option delete 'cks_cfix_version '

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_primary_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_primary_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_primary_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_primary_category'"
