#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ekiline_block_collection_bootstrap_css'
wp option delete 'ekiline_block_collection_bootstrap_js'
wp option delete 'ekiline_block_collection_bootstrap_css_editor'
wp option delete 'ekiline_block_collection_bootstrap_js_editor'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
