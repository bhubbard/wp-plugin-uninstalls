#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailmoo_smtp_host'
wp option delete 'mailmoo_smtp_port'
wp option delete 'mailmoo_smtp_auth'
wp option delete 'mailmoo_smtp_username'
wp option delete 'mailmoo_smtp_password'
wp option delete 'mailmoo_smtp_encryption'
wp option delete 'mailmoo_from_email'
wp option delete 'mailmoo_from_name'
wp option delete 'mailmoo_reply_to_email'
wp option delete 'mailmoo_reply_to_name'
wp option delete 'mailmoo_enable_logging'

