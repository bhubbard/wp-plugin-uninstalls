#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'remove_rating_widget_EDD'
wp option delete 'esign_edd_agreement_setting'
wp option delete 'esign_edd_sad_page'

# Delete Transients
wp transient delete '_esign_edd_redirect'
wp transient delete 'esig-edd-shortcode-view'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_esig_edd_meta_product_agreement'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_esig_edd_meta_product_agreement'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_esig_edd_meta_product_agreement'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_esig_edd_meta_product_agreement'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_esig_edd_meta_sad_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_esig_edd_meta_sad_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_esig_edd_meta_sad_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_esig_edd_meta_sad_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_esign_edd_sign_logic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_esign_edd_sign_logic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_esign_edd_sign_logic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_esign_edd_sign_logic'"
