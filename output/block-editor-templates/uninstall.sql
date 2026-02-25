-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_template_for_posttype', '_template_for_posttype_archive', '_template_for_taxonomy_archive');
DELETE FROM wp_usermeta WHERE meta_key IN ('_template_for_posttype', '_template_for_posttype_archive', '_template_for_taxonomy_archive');
DELETE FROM wp_termmeta WHERE meta_key IN ('_template_for_posttype', '_template_for_posttype_archive', '_template_for_taxonomy_archive');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_template_for_posttype', '_template_for_posttype_archive', '_template_for_taxonomy_archive');

