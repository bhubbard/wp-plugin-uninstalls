-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfbf_other', 'cfbf_edit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_read', 'is_reply', 'c_email', 'timeline', 'cfbf1', 'cfbf2');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_read', 'is_reply', 'c_email', 'timeline', 'cfbf1', 'cfbf2');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_read', 'is_reply', 'c_email', 'timeline', 'cfbf1', 'cfbf2');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_read', 'is_reply', 'c_email', 'timeline', 'cfbf1', 'cfbf2');

