#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lepress-cron-is-running'
wp option delete 'lepress-settings'
wp option delete 'lepress-simple-subscribe-success'
wp option delete 'lepress-last-widget-course'

# Delete Transients
wp transient delete 'lepress-courses-sitewide'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lepress-read'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lepress-read'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lepress-read'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lepress-read'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lepress-assignment-meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lepress-assignment-meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lepress-assignment-meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lepress-assignment-meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_lepress-student-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_lepress-student-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_lepress-student-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_lepress-student-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lepress-assignment-end-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lepress-assignment-end-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lepress-assignment-end-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lepress-assignment-end-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lepress-feedback-given'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lepress-feedback-given'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lepress-feedback-given'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lepress-feedback-given'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lepress-assignment-start-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lepress-assignment-start-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lepress-assignment-start-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lepress-assignment-start-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is-lepress-assignment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is-lepress-assignment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is-lepress-assignment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is-lepress-assignment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lepress-assignment-error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lepress-assignment-error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lepress-assignment-error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lepress-assignment-error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lepress-notification-sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lepress-notification-sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lepress-notification-sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lepress-notification-sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iframe-key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iframe-key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iframe-key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iframe-key'"
