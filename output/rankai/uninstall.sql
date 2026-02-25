-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rankai_target_keywords', 'rankai_auto_analyze', 'rankai_min_content_length');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rankai_target_keyword', '_rankai_seo_title', '_rankai_meta_description', '_rankai_overall_score', '_rankai_title_score', '_rankai_content_score');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rankai_target_keyword', '_rankai_seo_title', '_rankai_meta_description', '_rankai_overall_score', '_rankai_title_score', '_rankai_content_score');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rankai_target_keyword', '_rankai_seo_title', '_rankai_meta_description', '_rankai_overall_score', '_rankai_title_score', '_rankai_content_score');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rankai_target_keyword', '_rankai_seo_title', '_rankai_meta_description', '_rankai_overall_score', '_rankai_title_score', '_rankai_content_score');

