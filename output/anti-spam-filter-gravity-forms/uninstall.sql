-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('asfgf_subject_text', 'asfgf_form_id', 'asfgf_kill_spam', 'asfgf_enabled', 'asfgf_keywords_enabled', 'asfgf_keywords', 'asfgf_cyrillic');

