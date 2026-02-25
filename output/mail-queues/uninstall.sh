#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pbci_mail_disable_dequeue'
wp option delete 'pbci_mail_from_name'
wp option delete 'pbci_mail_set_reply_to'
wp option delete 'pbci_mail_reply_to_email'
wp option delete 'pbci_mail_reply_to_name'
wp option delete 'pbci_mail_max_send_attempts'
wp option delete 'pbci_mail_max_batch'
wp option delete 'pbci_mail_dequeue_wait'
wp option delete 'pbci_mail_max_allowed_queue_errors'
wp option delete 'pbci_mail_queue_disable_minutes'
wp option delete 'pbci_mail_ndr_checking'
wp option delete 'pbci_mail_ndr_mbox_server'
wp option delete 'pbci_mail_ndr_mbox_user'
wp option delete 'pbci_mail_ndr_mbox_password'
wp option delete 'pbci_mail_ndr_mbox_port'
wp option delete 'pbci_mail_log_all_mail'
wp option delete 'pbci_mail_debug_mode_server'
wp option delete 'pbci_mail_debug_mode_address'

