-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_marketing_expert_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ai_marketing_expert_focus_keyword', '_ai_marketing_expert_seo_title', '_ai_marketing_expert_seo_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ai_marketing_expert_focus_keyword', '_ai_marketing_expert_seo_title', '_ai_marketing_expert_seo_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ai_marketing_expert_focus_keyword', '_ai_marketing_expert_seo_title', '_ai_marketing_expert_seo_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ai_marketing_expert_focus_keyword', '_ai_marketing_expert_seo_title', '_ai_marketing_expert_seo_description');

