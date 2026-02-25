-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_service', 'groq_api_key', 'gemini_api_key', 'hf_api_key', 'super_programmatic_seo_campaigns', 'super_programmatic_seo_company_details', 'pseo_company_details', 'super_programmatic_seo_monthly_usage', 'super_programmatic_seo_api_settings', 'super_programmatic_seo_campaign_error', 'super_programmatic_seo_campaign_success');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_super_programmatic_seo_generated', '_super_programmatic_seo_generated_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_super_programmatic_seo_generated', '_super_programmatic_seo_generated_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_super_programmatic_seo_generated', '_super_programmatic_seo_generated_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_super_programmatic_seo_generated', '_super_programmatic_seo_generated_date');

