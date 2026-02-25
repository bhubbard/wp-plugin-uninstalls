#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adext_bank_transfer_config'
wp option delete 'adext_contact_form_config'
wp option delete 'wpadverts_multiverse'
wp option delete 'wpadverts_post_types'
wp option delete 'wpadverts_user_types'
wp option delete 'wpadverts_taxonomies'
wp option delete 'adverts_config'
wp option delete 'adverts_gallery'
wp option delete 'adext_emails_config'
wp option delete 'adext_emails_templates'
wp option delete 'adext_payments_config'
wp option delete 'adverts_blocks_styling'
wp option delete 'wpadverts_block_templates_global_method'
wp option delete 'wpadverts_block_templates'
wp option delete 'wpadverts_checksums'
wp option delete 'adverts_moderate'
wp option delete 'adverts_delayed_install'
wp option delete 'adverts_first_run'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'adext_payments_event_gc'
wp cron event delete 'adverts_event_gc'
wp cron event delete 'adverts_event_expire_ads'
wp cron event delete 'adverts_event_delete_tmp_files'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adverts_person'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adverts_person'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adverts_person'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adverts_person'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adverts_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adverts_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adverts_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adverts_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adverts_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adverts_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adverts_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adverts_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adverts_payment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adverts_payment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adverts_payment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adverts_payment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adverts_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adverts_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adverts_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adverts_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adverts_payment_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adverts_payment_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adverts_payment_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adverts_payment_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adverts_user_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adverts_user_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adverts_user_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adverts_user_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adverts_payment_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adverts_payment_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adverts_payment_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adverts_payment_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adverts_payment_paid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adverts_payment_paid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adverts_payment_paid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adverts_payment_paid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adverts_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adverts_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adverts_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adverts_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adverts_visible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adverts_visible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adverts_visible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adverts_visible'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adverts_payment_gateway'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adverts_payment_gateway'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adverts_payment_gateway'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adverts_payment_gateway'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adverts_pricing_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adverts_pricing_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adverts_pricing_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adverts_pricing_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_expiration_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_expiration_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_expiration_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_expiration_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payments_listing_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payments_listing_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payments_listing_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payments_listing_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adverts_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adverts_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adverts_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adverts_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adverts_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adverts_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adverts_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adverts_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adverts_payment_for'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adverts_payment_for'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adverts_payment_for'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adverts_payment_for'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adverts_frontend_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adverts_frontend_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adverts_frontend_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adverts_frontend_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adverts_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adverts_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adverts_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adverts_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_last_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_last_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_last_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_last_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpacf_form_scheme_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpacf_form_scheme_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpacf_form_scheme_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpacf_form_scheme_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpadverts_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpadverts_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpadverts_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpadverts_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpadverts_form_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpadverts_form_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpadverts_form_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpadverts_form_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpadvert_is_restricted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpadvert_is_restricted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpadvert_is_restricted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpadvert_is_restricted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adverts_frontend_hash_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adverts_frontend_hash_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adverts_frontend_hash_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adverts_frontend_hash_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adverts_attachments_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adverts_attachments_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adverts_attachments_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adverts_attachments_order'"
