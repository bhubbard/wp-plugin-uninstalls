#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lendingq_field_card'
wp option delete 'lendingq_field_card_desc'
wp option delete 'lendingq_field_card_regex'
wp option delete 'lendingq_field_contact'
wp option delete 'lendingq_field_contact_desc'
wp option delete 'lendingq_field_contact_overdue'
wp option delete 'lendingq_field_email'
wp option delete 'lendingq_field_email_Desc'
wp option delete 'lendingq_field_header_hold'
wp option delete 'lendingq_field_header_item'
wp option delete 'lendingq_field_item'
wp option delete 'lendingq_field_item_desc'
wp option delete 'lendingq_field_item_manuf'
wp option delete 'lendingq_field_item_manuf_desc'
wp option delete 'lendingq_field_item_model'
wp option delete 'lendingq_field_item_model_desc'
wp option delete 'lendingq_field_item_name'
wp option delete 'lendingq_field_item_name_desc'
wp option delete 'lendingq_field_item_notes'
wp option delete 'lendingq_field_item_notes_desc'
wp option delete 'lendingq_field_item_serial'
wp option delete 'lendingq_field_item_serial_desc'
wp option delete 'lendingq_field_name'
wp option delete 'lendingq_field_name_desc'
wp option delete 'lendingq_field_notes'
wp option delete 'lendingq_field_notes_desc'
wp option delete 'lendingq_field_phone'
wp option delete 'lendingq_field_phone_desc'
wp option delete 'lendingq_field_phone_regex'
wp option delete 'lendingq_field_pickup'
wp option delete 'lendingq_field_pickup_desc'
wp option delete 'lendingq_field_staff'
wp option delete 'lendingq_field_staff_desc'
wp option delete 'lendingq_field_verified'
wp option delete 'lendingq_field_verified_desc'
wp option delete 'lendingq_field_email_desc'
wp option delete 'lendingq'
wp option delete 'lendingq_field_header_stock'

# Delete Transients
wp transient delete 'lendingq_checkin_form'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'item_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'checked_out_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'checked_out_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'checked_out_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'checked_out_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'due_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'due_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'due_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'due_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lending_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lending_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lending_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lending_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'check_in_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'check_in_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'check_in_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'check_in_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'return_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'return_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'return_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'return_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unavail_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unavail_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unavail_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unavail_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact_staff'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact_staff'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact_staff'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact_staff'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'approved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'approved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'approved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'approved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w_date_nice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w_date_nice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w_date_nice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w_date_nice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'waiting_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'waiting_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'waiting_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'waiting_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'old_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'old_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'old_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'old_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lendingq_check_in_filter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lendingq_check_in_filter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lendingq_check_in_filter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lendingq_check_in_filter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lendingq_check_out_filter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lendingq_check_out_filter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lendingq_check_out_filter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lendingq_check_out_filter'"
