#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mpp-hide-intro-title'
wp option delete 'mpp-comments-on-page'
wp option delete 'mpp-continue-or-prev-next'
wp option delete 'mpp-disable-standard-pagination'
wp option delete 'mpp-toc-only-on-the-first-page'
wp option delete 'mpp-toc-position'
wp option delete 'mpp-toc-row-labels'
wp option delete 'mpp-hide-toc-header'
wp option delete 'mpp-comments-toc-link'
wp option delete '_mpp-rewrite-title-priority'
wp option delete '_mpp-rewrite-content-priority'
wp option delete 'mpp-disable-tinymce-buttons'
wp option delete '_mpp-postmeta-built'
wp option delete 'classic-editor-replace'
wp option delete '_mpp_db_version'
wp option delete 'multipage'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpp_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpp_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpp_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpp_data'"
