-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('customtables-googlemapapikey', 'customtables-googledriveapikey', 'customtables-googledriveclientid', 'customtables-fieldprefix', 'customtables-toolbaricons', 'customtables_version', 'customtables_success_message', 'customtables_error_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_usermeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_termmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_commentmeta WHERE meta_key IN ('session_tokens');

