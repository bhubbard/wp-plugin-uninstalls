-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WCSSC_db_version', 'WCSSC_options', 'widget_logic');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_customize_sidebars');
DELETE FROM wp_usermeta WHERE meta_key IN ('_customize_sidebars');
DELETE FROM wp_termmeta WHERE meta_key IN ('_customize_sidebars');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_customize_sidebars');

