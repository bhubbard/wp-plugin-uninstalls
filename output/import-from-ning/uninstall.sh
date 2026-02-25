#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp_ning_group_array'
wp option delete 'bp_ning_import_users'
wp option delete 'bp_ning_user_array'
wp option delete 'bp_ning_import_finished'
wp option delete 'bp_ning_emails_sent'
wp option delete 'bp_ning_profiles_imported'
wp option delete 'bp_ning_profile_mapping'
wp option delete 'bp_ning_discussions_imported'
wp option delete 'bp_ning_events_imported'
wp option delete 'bp_ning_emails_sent_to'
wp option delete 'bp-xprofile-fullname-field-name'
wp option delete 'bp_ning_skip_forum_activity'
wp option delete 'bp_ning_import_email_subject'
wp option delete 'bp_ning_import_email_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ning_comments_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ning_comments_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ning_comments_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ning_comments_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ning_profile_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ning_profile_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ning_profile_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ning_profile_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bp_ning_event_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bp_ning_event_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bp_ning_event_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bp_ning_event_website'"
