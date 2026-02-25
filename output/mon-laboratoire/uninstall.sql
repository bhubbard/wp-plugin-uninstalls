-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('MonLabo_settings_group10', 'MonLabo_settings_group4', 'MonLabo_settings_group3', 'MonLabo_settings_group1', 'MonLabo_settings_group2', 'MonLabo_settings_group7', 'MonLabo_settings_group0', 'MonLabo_settings_group5', 'MonLabo_settings_group11', 'MonLabo_settings_group8', 'MonLabo_settings_group9', 'MonLabo_settings_group6');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_theme_show_page_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_theme_show_page_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_theme_show_page_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_theme_show_page_title');

