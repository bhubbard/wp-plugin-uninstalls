-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aissp_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_old_slug', 'ai-snippet-seo-pro_membership_tokens', '_aissp_focus_keyword', '_aissp_seo_title', '_aissp_seo_description', '_aissp_score');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_old_slug', 'ai-snippet-seo-pro_membership_tokens', '_aissp_focus_keyword', '_aissp_seo_title', '_aissp_seo_description', '_aissp_score');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_old_slug', 'ai-snippet-seo-pro_membership_tokens', '_aissp_focus_keyword', '_aissp_seo_title', '_aissp_seo_description', '_aissp_score');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_old_slug', 'ai-snippet-seo-pro_membership_tokens', '_aissp_focus_keyword', '_aissp_seo_title', '_aissp_seo_description', '_aissp_score');

