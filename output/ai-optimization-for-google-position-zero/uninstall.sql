-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aiopt_faq_questions', '_aiopt_faq_answers', '_aiopt_faq_show');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aiopt_faq_questions', '_aiopt_faq_answers', '_aiopt_faq_show');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aiopt_faq_questions', '_aiopt_faq_answers', '_aiopt_faq_show');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aiopt_faq_questions', '_aiopt_faq_answers', '_aiopt_faq_show');

