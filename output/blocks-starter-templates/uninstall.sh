#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpst_block_templates_fresh_site'
wp option delete 'wpst-block-templates-export-checksums-time'
wp option delete 'wpst-block-templates-batch-is-complete'
wp option delete 'wpst-block-templates-manual-sync-complete'
wp option delete 'wpst-block-templates-export-checksums'
wp option delete 'wpst-block-templates-export-checksums-latest'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpst-block-templates_data-%'"
wp option delete 'wpst-block-templates-categories'
wp option delete 'wpst-block-templates-site-requests'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpst-block-templates-sites-%'"
wp option delete 'wpst-block-templates-block-requests'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpst-block-templates-blocks-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpst_block_templates_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpst_block_templates_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpst_block_templates_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpst_block_templates_image_hash'"
