-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nikan_faqp_textarea_type', 'faqp_template_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nikan_faqp_question', 'nikan_faqp_answer', 'faqp_display_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('nikan_faqp_question', 'nikan_faqp_answer', 'faqp_display_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('nikan_faqp_question', 'nikan_faqp_answer', 'faqp_display_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nikan_faqp_question', 'nikan_faqp_answer', 'faqp_display_type');

