#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'customtables-googlemapapikey'
wp option delete 'customtables-googledriveapikey'
wp option delete 'customtables-googledriveclientid'
wp option delete 'customtables-fieldprefix'
wp option delete 'customtables-toolbaricons'
wp option delete 'customtables_version'

# Delete Transients
wp transient delete 'customtables_success_message'
wp transient delete 'customtables_error_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
