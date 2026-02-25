-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qrc_composer_settings', 'qrc_composer_do_activation_edirect', 'qrc_autogenerate', 'qrc_admin_integrate', 'qrc_custom_link_generator', 'qrc_vcard_generator');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qrc_metabox');
DELETE FROM wp_usermeta WHERE meta_key IN ('qrc_metabox');
DELETE FROM wp_termmeta WHERE meta_key IN ('qrc_metabox');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qrc_metabox');

