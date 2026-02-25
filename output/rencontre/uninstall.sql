-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rencontre_options', 'rencontre_mailPerHour', 'rencontre_dbip');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('metaboxhidden_nav-menus', 'rencontre_confirm_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('metaboxhidden_nav-menus', 'rencontre_confirm_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('metaboxhidden_nav-menus', 'rencontre_confirm_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('metaboxhidden_nav-menus', 'rencontre_confirm_email');

