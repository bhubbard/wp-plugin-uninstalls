-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aeo_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aeo_target_question', '_aeo_direct_answer', '_aeo_faq_items');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aeo_target_question', '_aeo_direct_answer', '_aeo_faq_items');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aeo_target_question', '_aeo_direct_answer', '_aeo_faq_items');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aeo_target_question', '_aeo_direct_answer', '_aeo_faq_items');

