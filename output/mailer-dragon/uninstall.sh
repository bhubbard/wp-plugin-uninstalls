#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ic_mailer_dragon_install'
wp option delete 'ic_mailer_settings'
wp option delete 'ic_mailer_custom'
wp option delete 'ic_mailers_published'

# Clear Cron Jobs
wp cron event delete 'ic_hourly_scheduled_events'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_subscription_confirmed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_subscription_confirmed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_subscription_confirmed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_subscription_confirmed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_mailer_contents'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_mailer_contents'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_mailer_contents'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_mailer_contents'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_mailer_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_mailer_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_mailer_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_mailer_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_mail_last_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_mail_last_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_mail_last_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_mail_last_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_subscription_unsubscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_subscription_unsubscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_subscription_unsubscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_subscription_unsubscribed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_mailer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_mailer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_mailer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_mailer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_mail_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_mail_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_mail_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_mail_done'"
