#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dry_ice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dry_ice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dry_ice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dry_ice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mjeperiship_signature_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mjeperiship_signature_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mjeperiship_signature_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mjeperiship_signature_required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mjeperiship_declared_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mjeperiship_declared_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mjeperiship_declared_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mjeperiship_declared_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mjeperiship_dry_ice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mjeperiship_dry_ice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mjeperiship_dry_ice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mjeperiship_dry_ice'"
