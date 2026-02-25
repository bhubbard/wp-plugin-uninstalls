#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ffl_api_key_option'
wp option delete 'ffl_checkout_message'
wp option delete 'ffl_init_map_location'
wp option delete 'ffl_include_map'
wp option delete 'ffl_candr_override'
wp option delete 'ffl_local_pickup'
wp option delete 'ffl_mixed_cart_support'
wp option delete 'ffl_ammo_compliance_states'
wp option delete 'ffl_compliance_states'
wp option delete 'ffl_ammo_checkout_message'
wp option delete 'ffl_non_firearms_checkout_message'
wp option delete 'ffl_mixed_cart_notice_text'
wp option delete 'ffl_first_last_name_notice_text'
wp option delete 'ffl_restricted_states'
wp option delete 'ffl_restricted_states_message'
wp option delete 'ffl_restricted_states_firearms_message'
wp option delete 'ffl_restricted_states_ammo_message'
wp option delete 'ffl_restricted_states_firearms_ammo_message'
wp option delete 'ffl_restricted_states_all_message'
wp option delete 'ffl_mixed_cart_notice_bg_color'
wp option delete 'ffl_mixed_cart_notice_text_color'
wp option delete 'ffl_first_last_name_notice_bg_color'
wp option delete 'ffl_first_last_name_notice_text_color'
wp option delete 'ffl_checkout_message_bg_color'
wp option delete 'ffl_checkout_message_text_color'
wp option delete 'ffl_ammo_checkout_message_bg_color'
wp option delete 'ffl_ammo_checkout_message_text_color'
wp option delete 'ffl_block_po_boxes'
wp option delete 'ffl_po_box_error_message'
wp option delete 'ffl_require_address_match'
wp option delete 'ffl_address_mismatch_error_message'
wp option delete 'ffl_require_ffl_name_match'
wp option delete 'ffl_name_mismatch_error_message'
wp option delete 'ffl_document_upload_enabled'
wp option delete 'ffl_state_license_required_states'
wp option delete 'ffl_state_license_firearms_states'
wp option delete 'ffl_state_license_ammo_states'
wp option delete 'ffl_state_license_both_states'
wp option delete 'ffl_license_required_states'
wp option delete 'ffl_drivers_license_required_states'
wp option delete 'ffl_document_cleanup_enabled'
wp option delete 'ffl_document_cleanup_age_days'
wp option delete 'ffl_blacklist'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'ffl_local_pickup_conflict_message'
wp option delete 'ffl_document_last_cleanup'
wp option delete 'ffl_document_last_cleanup_count'
wp option delete 'ffl_document_last_cleanup_size'

# Clear Cron Jobs
wp cron event delete 'ffl_document_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ammunition_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ammunition_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ammunition_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ammunition_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_firearm_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_firearm_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_firearm_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_firearm_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ffl_admin_uploaded_documents'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ffl_admin_uploaded_documents'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ffl_admin_uploaded_documents'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ffl_admin_uploaded_documents'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ffl_uploaded_documents'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ffl_uploaded_documents'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ffl_uploaded_documents'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ffl_uploaded_documents'"
