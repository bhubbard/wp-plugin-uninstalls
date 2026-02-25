#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pj_pixel_dismissed_config_notice'
wp option delete 'woocommerce_pepperjam_pixel_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pj_pixel_displayed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pj_pixel_displayed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pj_pixel_displayed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pj_pixel_displayed'"
