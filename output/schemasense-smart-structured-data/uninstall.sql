-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('schsmst_batch_processing', 'schsmst_batch_offset', 'schsmst_batch_total', 'schsmst_batch_post_type', 'schsmst_enable_collapsible');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_schsmst_faq_schema', '_schsmst_last_check', '_schsmst_qa_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('_schsmst_faq_schema', '_schsmst_last_check', '_schsmst_qa_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('_schsmst_faq_schema', '_schsmst_last_check', '_schsmst_qa_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_schsmst_faq_schema', '_schsmst_last_check', '_schsmst_qa_count');

