#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'idealien_ml2msls_options'
wp option delete 'ml2msls_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'msls_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpml2wpms_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpml2wpms_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpml2wpms_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpml2wpms_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpml2wpms_baseLanguage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpml2wpms_baseLanguage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpml2wpms_baseLanguage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpml2wpms_baseLanguage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpml2wpms_transLanguages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpml2wpms_transLanguages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpml2wpms_transLanguages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpml2wpms_transLanguages'"
