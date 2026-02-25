#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'docid_general_asset_secret'
wp option delete 'docid_general_asset_id'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_docid_user_%' OR option_name LIKE '_site_transient_docid_user_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_docid_skip_auth_%' OR option_name LIKE '_site_transient_docid_skip_auth_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'docid_restricted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'docid_restricted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'docid_restricted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'docid_restricted'"
