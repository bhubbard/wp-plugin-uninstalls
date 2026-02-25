#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cognix_script'
wp option delete 'cognix_user_consent'
wp option delete 'cognix_base_url'
wp option delete 'cognix_tokens'
wp option delete 'cognix_createdResourceId'
wp option delete 'cognix_createdResourceName'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cognix_firstname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cognix_firstname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cognix_firstname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cognix_firstname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cognix_lastname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cognix_lastname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cognix_lastname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cognix_lastname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cognix_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cognix_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cognix_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cognix_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cognix_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cognix_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cognix_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cognix_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cognix_membername'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cognix_membername'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cognix_membername'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cognix_membername'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cognix_curdomain'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cognix_curdomain'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cognix_curdomain'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cognix_curdomain'"
