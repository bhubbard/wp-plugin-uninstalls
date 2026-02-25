-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mspp_review_prompt_removed', 'mspp_review_prompt_delay', 'mspp_review_prompt_delay');

