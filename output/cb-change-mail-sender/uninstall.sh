#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cb_mail_sender_email_id'
wp option delete 'cb_mail_sender_id'
wp option delete 'wp_mail_smtp_source'
wp option delete 'wp_mail_smtp_activation_prevent_redirect'

