#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'genesis_blocks_has_content_to_migrate'
wp option delete 'atomic_blocks_mailchimp_api_key'
wp option delete 'genesis_page_builder_block_settings_permissions'
wp option delete 'genesis_blocks_pro_migrated_from_genesis_blocks_pro'
wp option delete 'genesis_blocks_migrated_from_atomic_blocks'
wp option delete 'genesis_blocks_mailchimp_api_key'

# Delete Transients
wp transient delete 'genesis_blocks_mailchimp_lists'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'genesis_blocks_favorite_layouts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'genesis_blocks_favorite_layouts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'genesis_blocks_favorite_layouts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'genesis_blocks_favorite_layouts'"
