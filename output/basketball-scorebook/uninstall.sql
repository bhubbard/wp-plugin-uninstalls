-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('basksc_review_prompt_shown_at', 'basksc_review_prompt_handled_at');
DELETE FROM wp_usermeta WHERE meta_key IN ('basksc_review_prompt_shown_at', 'basksc_review_prompt_handled_at');
DELETE FROM wp_termmeta WHERE meta_key IN ('basksc_review_prompt_shown_at', 'basksc_review_prompt_handled_at');
DELETE FROM wp_commentmeta WHERE meta_key IN ('basksc_review_prompt_shown_at', 'basksc_review_prompt_handled_at');

