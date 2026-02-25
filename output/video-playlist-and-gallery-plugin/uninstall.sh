#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recently_activated'
wp option delete 'cincopa_cp_mt_api_token'
wp option delete 'CincopaRss'
wp option delete 'CincopaAsync'
wp option delete 'CincopaExcerpt'
wp option delete 'cincopa_welcome_notice'
wp option delete 'CincopaOpenGraph'
wp option delete 'CincopaTemplates'
wp option delete 'classic-editor-replace'
wp option delete 'cincopaexcerpt'
wp option delete 'cincopa_installed'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cincopa_cp_mt_api_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cincopa_cp_mt_api_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cincopa_cp_mt_api_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cincopa_cp_mt_api_token'"
