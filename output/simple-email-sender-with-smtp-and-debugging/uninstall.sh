#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_email_sender_smtp_host'
wp option delete 'simple_email_sender_smtp_port'
wp option delete 'simple_email_sender_smtp_username'
wp option delete 'simple_email_sender_smtp_password'
wp option delete 'simple_email_sender_smtp_encryption'
wp option delete 'simple_email_sender_from_email'
wp option delete 'simple_email_sender_debug_mode'

