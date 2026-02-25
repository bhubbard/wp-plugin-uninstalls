-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('author_avatars_version', 'widget_blogauthors', 'multiwidget_author_avatars', 'sidebars_widgets', 'author_avatars_settings', 'author_avatars_wpmu_settings');
DELETE FROM wp_options WHERE option_name LIKE '%user_roles';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nickname', 'first_name', 'last_name', 'last_activity');
DELETE FROM wp_usermeta WHERE meta_key IN ('nickname', 'first_name', 'last_name', 'last_activity');
DELETE FROM wp_termmeta WHERE meta_key IN ('nickname', 'first_name', 'last_name', 'last_activity');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nickname', 'first_name', 'last_name', 'last_activity');

