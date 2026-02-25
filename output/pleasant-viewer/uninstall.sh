#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pleasant_viewer_plugin_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pleasantviewer_citations_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pleasantviewer_citations_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pleasantviewer_citations_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pleasantviewer_citations_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pleasantviewer_introduction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pleasantviewer_introduction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pleasantviewer_introduction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pleasantviewer_introduction'"
