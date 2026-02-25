#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wad-options'
wp option delete 'wad_admin_notice_ignore'
wp option delete 'wad_do_activation_redirect'
wp option delete 'o-wad-subscribe'
wp option delete 'woocommerce_prices_include_tax'

# Delete Transients
wp transient delete 'wad_review_submitted'
wp transient delete 'wad-hide-reviews'
wp transient delete 'wad_notice_dismiss'
wp transient delete 'wad-hide-notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'o-discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'o-discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'o-discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'o-discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wad_used_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wad_used_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wad_used_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wad_used_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'o-list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'o-list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'o-list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'o-list'"
