#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wprb-hours'
wp option delete 'wprb-power-on'
wp option delete 'wprb-button-position'
wp option delete 'wprb-display-number-availables'
wp option delete 'wprb-activate-external-seats'
wp option delete 'wprb-bookable'
wp option delete 'wprb-margin-time'
wp option delete 'wprb-medium-time'
wp option delete 'wprb-expiration-time'
wp option delete 'wprb-activate-last-minute'
wp option delete 'wprb-last-minute-description'
wp option delete 'wprb-last-minute'
wp option delete 'wprb-activate-admin-notification'
wp option delete 'wprb-admin-recipients'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprb-time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprb-time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprb-time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprb-time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprb-people'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprb-people'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprb-people'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprb-people'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprb-first-name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprb-first-name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprb-first-name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprb-first-name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprb-last-name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprb-last-name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprb-last-name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprb-last-name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprb-email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprb-email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprb-email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprb-email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprb-phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprb-phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprb-phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprb-phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprb-table'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprb-table'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprb-table'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprb-table'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprb-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprb-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprb-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprb-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprb-until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprb-until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprb-until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprb-until'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprb-external'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprb-external'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprb-external'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprb-external'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprb-notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprb-notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprb-notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprb-notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprb-status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprb-status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprb-status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprb-status'"
