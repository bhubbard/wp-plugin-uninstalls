#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'linkinbio_landing_page_custom_slug'
wp option delete 'linkinbio_flush_rewrites'
wp option delete 'linkinbio_landing_page_disable_css'
wp option delete 'linkinbio_page_image'
wp option delete 'linkinbio_landing_page_image_link'
wp option delete 'linkinbio_landing_page_caption'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkinbio_redirect_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkinbio_redirect_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkinbio_redirect_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkinbio_redirect_link'"
