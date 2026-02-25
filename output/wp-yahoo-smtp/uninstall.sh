#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_yahoo_smtp_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_email_tracking_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_email_tracking_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_email_tracking_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_email_tracking_ignore_notice'"
