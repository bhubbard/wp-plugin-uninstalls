#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recently_activated'
wp option delete 'corsi_facebook'
wp option delete 'corsi_youtube'
wp option delete 'corsi_twitter'
wp option delete 'corsi_agoogleplus'
wp option delete 'corsi_smtphost'
wp option delete 'corsi_smtpuser'
wp option delete 'corsi_smtppassword'
wp option delete 'corsi_googleplus'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tgmpa_dismissed_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tgmpa_dismissed_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tgmpa_dismissed_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tgmpa_dismissed_notice'"
