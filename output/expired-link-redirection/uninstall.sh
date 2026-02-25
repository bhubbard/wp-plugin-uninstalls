#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elrlitev_options'

# Delete Transients
wp transient delete 'elrlitev_admin_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elrlitev_original_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elrlitev_original_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elrlitev_original_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elrlitev_original_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elrlitev_redirect_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elrlitev_redirect_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elrlitev_redirect_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elrlitev_redirect_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elrlitev_expire_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elrlitev_expire_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elrlitev_expire_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elrlitev_expire_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elrlitev_hits'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elrlitev_hits'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elrlitev_hits'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elrlitev_hits'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elrlitev_is_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elrlitev_is_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elrlitev_is_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elrlitev_is_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elrlitev_autolink_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elrlitev_autolink_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elrlitev_autolink_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elrlitev_autolink_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elrlitev_expire_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elrlitev_expire_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elrlitev_expire_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elrlitev_expire_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elrlitev_expire_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elrlitev_expire_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elrlitev_expire_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elrlitev_expire_unit'"
