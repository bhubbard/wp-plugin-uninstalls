-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fogm_chat_options', 'fogm_chat_trigger_options', 'fogm_chat_greetings_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fogm_chat_review_ignore');
DELETE FROM wp_usermeta WHERE meta_key IN ('fogm_chat_review_ignore');
DELETE FROM wp_termmeta WHERE meta_key IN ('fogm_chat_review_ignore');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fogm_chat_review_ignore');

