-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mflash_ai_seo_optimizer_settings', 'mflash_mflash_ai_seo_optimizer_settings', 'mflash_ai_seo_optimizer_auth_key', 'mflash_ai_seo_optimizer_welcome');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mflash_ai_seo_score', '_ai_seo_title', '_ai_seo_description', '_ai_seo_keywords', '_mflash_ai_seo_title', '_mflash_ai_seo_description', '_mflash_ai_seo_keywords', '_mflash_ai_seo_optimization_changes', '_mflash_ai_seo_optimization_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mflash_ai_seo_score', '_ai_seo_title', '_ai_seo_description', '_ai_seo_keywords', '_mflash_ai_seo_title', '_mflash_ai_seo_description', '_mflash_ai_seo_keywords', '_mflash_ai_seo_optimization_changes', '_mflash_ai_seo_optimization_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mflash_ai_seo_score', '_ai_seo_title', '_ai_seo_description', '_ai_seo_keywords', '_mflash_ai_seo_title', '_mflash_ai_seo_description', '_mflash_ai_seo_keywords', '_mflash_ai_seo_optimization_changes', '_mflash_ai_seo_optimization_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mflash_ai_seo_score', '_ai_seo_title', '_ai_seo_description', '_ai_seo_keywords', '_mflash_ai_seo_title', '_mflash_ai_seo_description', '_mflash_ai_seo_keywords', '_mflash_ai_seo_optimization_changes', '_mflash_ai_seo_optimization_date');

