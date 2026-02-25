#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sdc_default_schema'
wp option delete 'sdc_default_schema_content'
wp option delete 'sdc_defaults'
wp option delete 'sdc_settings'
wp option delete 'moup_uploads'
wp option delete 'sdc_uploads'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
