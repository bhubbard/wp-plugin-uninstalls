-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kafkaiwp_settings', 'kafkaiwp_api_user', 'kafkaiwp_token');
DELETE FROM wp_options WHERE option_name LIKE '%token';
DELETE FROM wp_options WHERE option_name LIKE '%settings';
DELETE FROM wp_options WHERE option_name LIKE '%imported_articles';
DELETE FROM wp_options WHERE option_name LIKE '%api_user';
DELETE FROM wp_options WHERE option_name LIKE '%settings_json';
DELETE FROM wp_options WHERE option_name LIKE '%temporary_openapi_data';
DELETE FROM wp_options WHERE option_name LIKE '%new_niches';
DELETE FROM wp_options WHERE option_name LIKE '%new_languages';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kafkai_article_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('kafkai_article_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('kafkai_article_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kafkai_article_id');

