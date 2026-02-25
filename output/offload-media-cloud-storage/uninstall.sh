#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_do_activation_redirect'"

# Delete Transients
wp transient delete 'acoofmf_cdn_base_urls'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acoofm_presigned_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acoofm_presigned_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acoofm_presigned_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acoofm_presigned_urls'"
