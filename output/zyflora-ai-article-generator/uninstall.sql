-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zyflora_research_page_id', 'zyflora_article_page_id', 'zyflora_claude_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zyflora_saved_keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('zyflora_saved_keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('zyflora_saved_keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zyflora_saved_keywords');

