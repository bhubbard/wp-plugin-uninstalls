#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_email_footer_text'
wp option delete 'peprobacsru_auto_change_status'
wp option delete 'peprobacsru_status_on_receipt_awaiting_upload'
wp option delete 'peprobacsru_status_on_receipt_awaiting_approval'
wp option delete 'peprobacsru_status_on_receipt_rejected'
wp option delete 'peprobacsru_status_on_receipt_approved'
wp option delete 'peprobacsru_html_before_form'
wp option delete 'peprobacsru_html_after_form'
wp option delete 'peprobacsru_use_secure_link'
wp option delete 'peprobacsru_redirect_after_upload'
wp option delete 'peprobacsru_allowed_gatewawys'
wp option delete 'peprobacsru_allowed_gateways'
wp option delete 'peprobacsru_allowed_file_types'
wp option delete 'peprobacsru_allowed_file_size'
wp option delete 'peprobacsru_show_on_statuses'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'receipt_upload_admin_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'receipt_upload_admin_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'receipt_upload_admin_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'receipt_upload_admin_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_attached_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_attached_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_attached_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_attached_order'"
