#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hana_block_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hana_block_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hana_block_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hana_block_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hana_block_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hana_block_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hana_block_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hana_block_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hana_block_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hana_block_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hana_block_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hana_block_action'"
