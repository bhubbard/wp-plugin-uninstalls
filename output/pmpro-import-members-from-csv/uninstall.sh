#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'e20r_im_error_msg'
wp option delete 'pmp_im_error_msg'
wp option delete 'e20r_import_has_donated'
wp option delete 'e20r_link_for_sponsor'
wp option delete 'e20r_import_errors'
wp option delete 'e20r_imesc_attr_error_msg'

# Delete Transients
wp transient delete 'e20r_import_filename'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmprosm_seats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmprosm_seats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmprosm_seats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmprosm_seats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmprosm_sponsor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmprosm_sponsor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmprosm_sponsor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmprosm_sponsor'"
