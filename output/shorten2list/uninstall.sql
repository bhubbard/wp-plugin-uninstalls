-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shorten2list_db_version');
DELETE FROM wp_options WHERE option_name LIKE 'shorten2list_options_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('short_url', 'sent-by-mail');
DELETE FROM wp_usermeta WHERE meta_key IN ('short_url', 'sent-by-mail');
DELETE FROM wp_termmeta WHERE meta_key IN ('short_url', 'sent-by-mail');
DELETE FROM wp_commentmeta WHERE meta_key IN ('short_url', 'sent-by-mail');

