#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lebdev_block_emails'
wp option delete 'lebdev_smtp_bypass'
wp option delete 'lebdev_block_on_smtp'
wp option delete 'wp_mail_smtp'
wp option delete 'swpsmtp_options'
wp option delete 'wp_smtp_options'
wp option delete 'postman_options'
wp option delete 'fluentmail-settings'

