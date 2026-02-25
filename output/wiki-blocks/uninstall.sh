#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wilcoskywb_wiki_blocks_merge_permissions'
wp option delete 'wilcoskywb_wiki_blocks_browse_permissions'
wp option delete 'wilcoskywb_wiki_blocks_suggest_permissions'
wp option delete 'wilcoskywb_wiki_blocks_require_login_browse'
wp option delete 'wilcoskywb_wiki_blocks_cleanup_on_uninstall'
wp option delete 'wilcoskywb_wiki_blocks_activity_retention_days'
wp option delete 'wilcoskywb_wiki_blocks_max_versions_per_block'
wp option delete 'wilcoskywb_wiki_blocks_cleanup_on_delete'
wp option delete 'wilcoskywb_wiki_blocks_db_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wilcoskywb_backend_edit_%' OR option_name LIKE '_site_transient_wilcoskywb_backend_edit_%'"

