-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cms_navigation_ignore_migrated_warn');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cms_nav_minihome', '_top_nav_excluded', '_cms_nav_section');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cms_nav_minihome', '_top_nav_excluded', '_cms_nav_section');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cms_nav_minihome', '_top_nav_excluded', '_cms_nav_section');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cms_nav_minihome', '_top_nav_excluded', '_cms_nav_section');

