-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_cpt_cpt-sample-menu_sch');
DELETE FROM wp_options WHERE option_name LIKE '%_sch';
DELETE FROM wp_options WHERE option_name LIKE '%_js';
DELETE FROM wp_options WHERE option_name LIKE '%_css';
DELETE FROM wp_options WHERE option_name LIKE '_cpt_pg_content_template_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_custom_page_theme_select');
DELETE FROM wp_usermeta WHERE meta_key IN ('_custom_page_theme_select');
DELETE FROM wp_termmeta WHERE meta_key IN ('_custom_page_theme_select');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_custom_page_theme_select');

