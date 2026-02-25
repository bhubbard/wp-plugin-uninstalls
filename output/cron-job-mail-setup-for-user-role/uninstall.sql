-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cjmailerTo', 'cjmailerSubject', 'cjmailerBody', 'cjmailerUser', 'default_post_edit_rows', 'cjmailerto');

