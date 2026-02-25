#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cmodsar_searchAndReplaceOnPosttypes'
wp option delete 'cmodsar_allowed_terms_metabox_all_post_types'
wp option delete 'cmodsar_replacements'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registered'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-was-registered'"
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edit_custom_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edit_custom_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edit_custom_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edit_custom_per_page'"
