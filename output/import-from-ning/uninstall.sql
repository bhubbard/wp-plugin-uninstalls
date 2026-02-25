-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_ning_group_array', 'bp_ning_import_users', 'bp_ning_user_array', 'bp_ning_import_finished', 'bp_ning_emails_sent', 'bp_ning_profiles_imported', 'bp_ning_profile_mapping', 'bp_ning_discussions_imported', 'bp_ning_events_imported', 'bp_ning_emails_sent_to', 'bp-xprofile-fullname-field-name', 'bp_ning_skip_forum_activity', 'bp_ning_import_email_subject', 'bp_ning_import_email_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ning_comments_imported', 'ning_profile_imported', '_bp_ning_event_website');
DELETE FROM wp_usermeta WHERE meta_key IN ('ning_comments_imported', 'ning_profile_imported', '_bp_ning_event_website');
DELETE FROM wp_termmeta WHERE meta_key IN ('ning_comments_imported', 'ning_profile_imported', '_bp_ning_event_website');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ning_comments_imported', 'ning_profile_imported', '_bp_ning_event_website');

