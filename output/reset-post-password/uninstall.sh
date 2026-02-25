#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'wp360_reset_post_passwords'
wp cron event delete 'wp360_reset_passwords'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date_reset_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date_reset_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date_reset_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date_reset_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_password_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_password_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_password_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_password_interval'"
