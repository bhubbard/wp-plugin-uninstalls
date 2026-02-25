#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_mail_replyto_migration_v200'
wp option delete 'wp_mail_replyto_email'
wp option delete 'wp_mail_replyto_name'
wp option delete 'wp_mail_replyto_contexts'

