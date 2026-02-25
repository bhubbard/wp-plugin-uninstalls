-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('verbato_project', 'verbato_project_api_url', 'verbato_project_logs', 'verbato_project_id', 'widget_verbato_widget', 'verbato_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_verbato_product_prompt', '_verbato_product_prompt_error');
DELETE FROM wp_usermeta WHERE meta_key IN ('_verbato_product_prompt', '_verbato_product_prompt_error');
DELETE FROM wp_termmeta WHERE meta_key IN ('_verbato_product_prompt', '_verbato_product_prompt_error');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_verbato_product_prompt', '_verbato_product_prompt_error');

