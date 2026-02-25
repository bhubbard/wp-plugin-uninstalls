-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WP_Github_Tools_Settingsgeneral', 'WP_Github_Tools_Data', 'WP_Github_Tools');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_github_tools_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_github_tools_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_github_tools_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_github_tools_ignore_notice');

