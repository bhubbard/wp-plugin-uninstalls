#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'redshape_easylabels_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'redshape_easylabels_filter_order_%'"
wp option delete 'content_labels_options'
wp option delete 'redshape_easylabels_storage_upgraded'

# Delete Transients
wp transient delete 'settings_errors'
wp transient delete 'redshape_easylabels_version_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_content_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_content_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_content_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_content_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_content_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_content_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_content_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_content_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_content_labels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_content_labels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_content_labels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_content_labels'"
