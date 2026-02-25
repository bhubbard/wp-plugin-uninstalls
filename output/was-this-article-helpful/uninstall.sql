-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wthf_types', 'wthf_question_text', 'wthf_yes_text', 'wthf_no_text', 'wthf_thank_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wthf_yes', '_wthf_no');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wthf_yes', '_wthf_no');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wthf_yes', '_wthf_no');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wthf_yes', '_wthf_no');

