-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('loggedin_maximum', 'loggedin_logic', 'loggedin_rating_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('loggedin_rating_notice_dismissed', 'session_tokens');
DELETE FROM wp_usermeta WHERE meta_key IN ('loggedin_rating_notice_dismissed', 'session_tokens');
DELETE FROM wp_termmeta WHERE meta_key IN ('loggedin_rating_notice_dismissed', 'session_tokens');
DELETE FROM wp_commentmeta WHERE meta_key IN ('loggedin_rating_notice_dismissed', 'session_tokens');

