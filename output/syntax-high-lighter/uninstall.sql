-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('melibuPlugin_get_syntaxhighlighter_shema', 'melibuPlugin_get_syntaxhighlighter_css', 'melibuPlugin_get_syntaxhighlighter_regexp', 'melibuPlugin_get_syntaxhighlighter_regexp_settings', 'melibuPlugin_get_syntaxhighlighter_options', 'melibuPlugin_get_syntaxhighlighter_colors', 'melibuPlugin_get_syntaxhighlighter_colors_activate', 'melibuPlugin_syntaxhighlighter_get_syntax_copy', 'melibu-plugin-syntax-version', 'melibu-plugin-syntax-db-version', 'melibu_plugin_get_syntaxhighlighter_regexp_setting', 'melibu-plugin-syntax-logo-get', 'melibuPlugin_get_syntaxhighlihter_shema', 'mb-author-box-get-setting-group', 'melibu-plugin-syntax-page-activated');
DELETE FROM wp_options WHERE option_name LIKE 'melibu_syntax_post_type_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('melibu_syntax_post_current');
DELETE FROM wp_usermeta WHERE meta_key IN ('melibu_syntax_post_current');
DELETE FROM wp_termmeta WHERE meta_key IN ('melibu_syntax_post_current');
DELETE FROM wp_commentmeta WHERE meta_key IN ('melibu_syntax_post_current');

