#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aioseop_options'
wp option delete 'aiosp_can'
wp option delete 'aiosp_description_format'
wp option delete 'wpseo_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seocc_params'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seocc_params'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seocc_params'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seocc_params'"
