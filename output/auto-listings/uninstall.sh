#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_listings_options'
wp option delete 'auto_listings_db_version'
wp option delete 'auto_listings_version'
wp option delete 'auto_listings_version_upgraded_from'
wp option delete 'mbfs_db_version'
wp option delete 'mbfs_keys'

# Delete Transients
wp transient delete 'al_vehicle_filter_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_al_enquiry_listing_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_al_enquiry_listing_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_al_enquiry_listing_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_al_enquiry_listing_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_al_enquiry_listing_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_al_enquiry_listing_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_al_enquiry_listing_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_al_enquiry_listing_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_al_enquiry_listing_seller'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_al_enquiry_listing_seller'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_al_enquiry_listing_seller'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_al_enquiry_listing_seller'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_al_enquiry_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_al_enquiry_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_al_enquiry_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_al_enquiry_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_al_listing_enquiries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_al_listing_enquiries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_al_listing_enquiries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_al_listing_enquiries'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_al_enquiry_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_al_enquiry_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_al_enquiry_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_al_enquiry_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_al_enquiry_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_al_enquiry_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_al_enquiry_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_al_enquiry_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_al_enquiry_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_al_enquiry_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_al_enquiry_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_al_enquiry_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_al_listing_model_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_al_listing_model_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_al_listing_model_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_al_listing_model_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_al_listing_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_al_listing_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_al_listing_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_al_listing_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
