-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nexaapc_settings', 'nexaapc_activation_time', 'nexaapc_review_notice_hide', 'nexaapc_next_show_time', 'nexaapc_product_content_smartsuite_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nexaapc_product_faqs', '_nexaapc_ai_tags', '_nexaapc_ai_faqs', '_nexaapc_ai_name', '_nexaapc_ai_description', '_nexaapc_ai_shortdesc');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nexaapc_product_faqs', '_nexaapc_ai_tags', '_nexaapc_ai_faqs', '_nexaapc_ai_name', '_nexaapc_ai_description', '_nexaapc_ai_shortdesc');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nexaapc_product_faqs', '_nexaapc_ai_tags', '_nexaapc_ai_faqs', '_nexaapc_ai_name', '_nexaapc_ai_description', '_nexaapc_ai_shortdesc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nexaapc_product_faqs', '_nexaapc_ai_tags', '_nexaapc_ai_faqs', '_nexaapc_ai_name', '_nexaapc_ai_description', '_nexaapc_ai_shortdesc');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_nexaapc_ai_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_nexaapc_ai_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_nexaapc_ai_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_nexaapc_ai_%';

