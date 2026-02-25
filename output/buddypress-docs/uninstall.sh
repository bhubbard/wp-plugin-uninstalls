#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'bp-docs-slug'
wp option delete 'bp-docs-excerpt-length'
wp option delete 'bp-docs-directory-title'
wp option delete 'bp-docs-user-tab-name'
wp option delete 'bp-docs-tab-name'
wp option delete 'bp-docs-enable-attachments'
wp option delete 'dashboard_widget_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_children'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_associated_groups-%' OR option_name LIKE '_site_transient_associated_groups-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_docs_last_editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_docs_last_editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_docs_last_editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_docs_last_editor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bp_docs_last_pinged'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bp_docs_last_pinged'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bp_docs_last_pinged'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bp_docs_last_pinged'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_docs_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_docs_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_docs_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_docs_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_docs_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_docs_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_docs_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_docs_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_docs_revision_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_docs_revision_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_docs_revision_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_docs_revision_count'"
