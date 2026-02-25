#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cjlbdemailCountDown'
wp option delete 'cjlbdemailID'
wp option delete 'cjl_bdemail_settings'

# Clear Cron Jobs
wp cron event delete 'cjl_dbemail_hourly_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cjl_bdemailDone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cjl_bdemailDone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cjl_bdemailDone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cjl_bdemailDone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cjl_bdemailUnsubscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cjl_bdemailUnsubscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cjl_bdemailUnsubscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cjl_bdemailUnsubscribed'"
