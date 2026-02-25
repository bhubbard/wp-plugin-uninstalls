#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vigisesc_logs_status'
wp option delete 'comment_previously_approved'
wp option delete 'whitelist_keys'
wp option delete 'comment_moderation_email'
wp option delete 'vigisesc_settings'

