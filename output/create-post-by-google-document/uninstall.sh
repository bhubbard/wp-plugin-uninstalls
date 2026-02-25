#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpbgd_application_name'
wp option delete 'cpbgd_developer_key'
wp option delete 'cpbgd_client_id'
wp option delete 'cpbgd_client_secret'
wp option delete 'cpbgd_api_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpbgd_google_doc_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpbgd_google_doc_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpbgd_google_doc_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpbgd_google_doc_id'"
