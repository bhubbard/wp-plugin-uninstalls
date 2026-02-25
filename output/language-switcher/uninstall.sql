-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%detect_browser_language';
DELETE FROM wp_options WHERE option_name LIKE '%default_language_urls';
DELETE FROM wp_options WHERE option_name LIKE '%language_taxonomies';
DELETE FROM wp_options WHERE option_name LIKE '%language_post_types';
DELETE FROM wp_options WHERE option_name LIKE '%active_languages';
DELETE FROM wp_options WHERE option_name LIKE '%add_switcher_to_menus';
DELETE FROM wp_options WHERE option_name LIKE '%switcher_title';
DELETE FROM wp_options WHERE option_name LIKE '%custom_title';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('language_switcher');
DELETE FROM wp_usermeta WHERE meta_key IN ('language_switcher');
DELETE FROM wp_termmeta WHERE meta_key IN ('language_switcher');
DELETE FROM wp_commentmeta WHERE meta_key IN ('language_switcher');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%language_switcher';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%language_switcher';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%language_switcher';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%language_switcher';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%main_language';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%main_language';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%main_language';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%main_language';

