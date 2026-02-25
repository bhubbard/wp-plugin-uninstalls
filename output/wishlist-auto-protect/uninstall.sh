#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'atc_process_protect_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atc-enable-status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atc-enable-status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atc-enable-status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atc-enable-status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atc-expire-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atc-expire-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atc-expire-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atc-expire-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atc-expire-days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atc-expire-days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atc-expire-days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atc-expire-days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atc-enable-method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atc-enable-method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atc-enable-method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atc-enable-method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atc-protect-level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atc-protect-level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atc-protect-level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atc-protect-level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'atc-enable-method%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'atc-enable-method%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'atc-enable-method%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'atc-enable-method%'"
