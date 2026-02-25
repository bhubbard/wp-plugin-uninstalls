-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_email', '_name', '_props', '_last_contacted', '_subject', '_from', '_from_name', '_from_email', '_fields', '_submission_status', '_meta', '_akismet', '_recaptcha', '_spam_log', '_consent', '_hash', '_spam_meta_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('_email', '_name', '_props', '_last_contacted', '_subject', '_from', '_from_name', '_from_email', '_fields', '_submission_status', '_meta', '_akismet', '_recaptcha', '_spam_log', '_consent', '_hash', '_spam_meta_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('_email', '_name', '_props', '_last_contacted', '_subject', '_from', '_from_name', '_from_email', '_fields', '_submission_status', '_meta', '_akismet', '_recaptcha', '_spam_log', '_consent', '_hash', '_spam_meta_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_email', '_name', '_props', '_last_contacted', '_subject', '_from', '_from_name', '_from_email', '_fields', '_submission_status', '_meta', '_akismet', '_recaptcha', '_spam_log', '_consent', '_hash', '_spam_meta_time');

