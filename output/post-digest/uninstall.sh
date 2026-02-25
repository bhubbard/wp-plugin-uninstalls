#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wrpdig_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wrpdig_session_%' OR option_name LIKE '_site_transient_wrpdig_session_%'"
wp transient delete 'wrpdig_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wrpdig_prompt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wrpdig_prompt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wrpdig_prompt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wrpdig_prompt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wrpdig_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wrpdig_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wrpdig_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wrpdig_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wrpdig_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wrpdig_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wrpdig_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wrpdig_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wrpdig_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wrpdig_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wrpdig_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wrpdig_ip'"
