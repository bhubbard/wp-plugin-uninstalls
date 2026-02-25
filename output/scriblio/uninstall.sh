#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scrib_opts'
wp option delete 'scrib'
wp option delete 'scrib_categories'
wp option delete 'scrib_taxonomies'
wp option delete 'widget_scriblio_facets'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scrib_meditor_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scrib_meditor_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scrib_meditor_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scrib_meditor_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bsuite_post_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bsuite_post_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bsuite_post_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bsuite_post_icon'"
