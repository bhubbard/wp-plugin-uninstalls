#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ga_events_options'
wp option delete 'GA_EVENTS_version'
wp option delete 'ga_events_activation_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpgae_whatsnew_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpgae_whatsnew_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpgae_whatsnew_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpgae_whatsnew_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ga_events_review_dismiss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ga_events_review_dismiss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ga_events_review_dismiss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ga_events_review_dismiss'"
