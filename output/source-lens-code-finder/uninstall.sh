#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slcf_settings'
wp option delete 'ad_inserter'
wp option delete 'slcf_recent_searches'
wp option delete 'rewrite_rules'
wp option delete 'slcf_version'
wp option delete 'slcf_file_hash'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy-post-editor-data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy-post-editor-data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy-post-editor-data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy-post-editor-data'"
