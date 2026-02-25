#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'default_post_edit_rows'
wp option delete 'wre_options'
wp option delete 'rewrite_rules'
wp option delete 'wre_version'
wp option delete 'wre_version_upgraded_from'

# Delete Transients
wp transient delete '_wre_activation_redirect'
wp transient delete '_wre_redirected'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wre_listing_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wre_listing_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wre_listing_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wre_listing_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wre_enquiry_listing_agent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wre_enquiry_listing_agent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wre_enquiry_listing_agent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wre_enquiry_listing_agent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wre_enquiry_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wre_enquiry_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wre_enquiry_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wre_enquiry_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wre_enquiry_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wre_enquiry_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wre_enquiry_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wre_enquiry_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wre_enquiry_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wre_enquiry_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wre_enquiry_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wre_enquiry_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wre_enquiry_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wre_enquiry_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wre_enquiry_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wre_enquiry_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wre_listing_enquiries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wre_listing_enquiries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wre_listing_enquiries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wre_listing_enquiries'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wre_marker_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wre_marker_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wre_marker_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wre_marker_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wre_listing_agent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wre_listing_agent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wre_listing_agent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wre_listing_agent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wre_listing_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wre_listing_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wre_listing_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wre_listing_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
