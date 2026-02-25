#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ce21_access_token'
wp option delete 'ce21_token_expiry'
wp option delete 'authorizeURI_ce21'
wp option delete 'tenantId_ce21'
wp option delete 'ce21_authentication_key'
wp option delete 'backendURI_ce21'
wp option delete 'baseAPIURI_ce21'

# Delete Transients
wp transient delete 'wp_upe_updated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_article_authentication'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_article_authentication'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_article_authentication'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_article_authentication'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_authentication_custom_metabox_ce21'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_authentication_custom_metabox_ce21'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_authentication_custom_metabox_ce21'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_authentication_custom_metabox_ce21'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sign_in_ce21'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sign_in_ce21'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sign_in_ce21'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sign_in_ce21'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_CE21_CustomerId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_CE21_CustomerId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_CE21_CustomerId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_CE21_CustomerId'"
