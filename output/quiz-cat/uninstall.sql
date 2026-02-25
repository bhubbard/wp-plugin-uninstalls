-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fca_qc_gdpr_checkbox', 'fca_qc_gdpr_locale', 'links_updated_date_format', 'fca_qc_show_review_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('quiz_cat_settings', 'quiz_cat_meta', 'quiz_cat_questions', 'quiz_cat_results', 'quiz_cat_translations', 'quiz_cat_appearance');
DELETE FROM wp_usermeta WHERE meta_key IN ('quiz_cat_settings', 'quiz_cat_meta', 'quiz_cat_questions', 'quiz_cat_results', 'quiz_cat_translations', 'quiz_cat_appearance');
DELETE FROM wp_termmeta WHERE meta_key IN ('quiz_cat_settings', 'quiz_cat_meta', 'quiz_cat_questions', 'quiz_cat_results', 'quiz_cat_translations', 'quiz_cat_appearance');
DELETE FROM wp_commentmeta WHERE meta_key IN ('quiz_cat_settings', 'quiz_cat_meta', 'quiz_cat_questions', 'quiz_cat_results', 'quiz_cat_translations', 'quiz_cat_appearance');

