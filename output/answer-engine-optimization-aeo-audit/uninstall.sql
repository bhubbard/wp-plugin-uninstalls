-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aeoaudi_faq_questions', '_aeoaudi_faq_answers', '_aeoaudi_faq_show', '_aeoaudi_enable_schema', '_aeoaudi_enable_speakable', '_aeoaudi_enable_summary', '_aeoaudi_ai_summary');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aeoaudi_faq_questions', '_aeoaudi_faq_answers', '_aeoaudi_faq_show', '_aeoaudi_enable_schema', '_aeoaudi_enable_speakable', '_aeoaudi_enable_summary', '_aeoaudi_ai_summary');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aeoaudi_faq_questions', '_aeoaudi_faq_answers', '_aeoaudi_faq_show', '_aeoaudi_enable_schema', '_aeoaudi_enable_speakable', '_aeoaudi_enable_summary', '_aeoaudi_ai_summary');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aeoaudi_faq_questions', '_aeoaudi_faq_answers', '_aeoaudi_faq_show', '_aeoaudi_enable_schema', '_aeoaudi_enable_speakable', '_aeoaudi_enable_summary', '_aeoaudi_ai_summary');

