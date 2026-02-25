#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'caas_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_sl_changelog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_sl_changelog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_sl_changelog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_sl_changelog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tested'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tested'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tested'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tested'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'requires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'requires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'requires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'requires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'requires_php'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'requires_php'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'requires_php'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'requires_php'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_sl_required_versions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_sl_required_versions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_sl_required_versions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_sl_required_versions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'homepage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'homepage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'homepage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'homepage'"
