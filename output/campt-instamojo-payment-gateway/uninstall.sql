-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tix_phone', 'tix_access_token', 'tix_ticket_id', 'tix_questions');
DELETE FROM wp_usermeta WHERE meta_key IN ('tix_phone', 'tix_access_token', 'tix_ticket_id', 'tix_questions');
DELETE FROM wp_termmeta WHERE meta_key IN ('tix_phone', 'tix_access_token', 'tix_ticket_id', 'tix_questions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tix_phone', 'tix_access_token', 'tix_ticket_id', 'tix_questions');

