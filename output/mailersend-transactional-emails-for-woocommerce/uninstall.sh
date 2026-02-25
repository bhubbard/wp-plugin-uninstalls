#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailersend_api_key'
wp option delete 'mailersend_from_name'
wp option delete 'mailersend_from_address'
wp option delete 'mailersend_cc_address'
wp option delete 'mailersend_bcc_address'
wp option delete 'mailersend_new_order_template_id'
wp option delete 'mailersend_cancel_order_template_id'
wp option delete 'mailersend_failed_order_template_id'
wp option delete 'mailersend_onhold_order_template_id'
wp option delete 'mailersend_processing_order_template_id'
wp option delete 'mailersend_completed_order_template_id'
wp option delete 'mailersend_refunded_order_template_id'
wp option delete 'mailersend_customer_invoice_template_id'
wp option delete 'mailersend_customer_note_template_id'
wp option delete 'mailersend_reset_password_template_id'
wp option delete 'mailersend_new_account_template_id'

