#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cracr_cart_abandoned_time'
wp option delete 'cracr_auto_delete_enable'
wp option delete 'cracr_auto_delete_days'
wp option delete 'cracr_auto_delete_statuses'

# Clear Cron Jobs
wp cron event delete 'cracr_cron_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cracr_is_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cracr_is_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cracr_is_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cracr_is_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cracr_send_delay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cracr_send_delay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cracr_send_delay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cracr_send_delay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cracr_email_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cracr_email_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cracr_email_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cracr_email_subject'"
