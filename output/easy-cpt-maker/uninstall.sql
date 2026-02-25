-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ecpt_cpt_name', 'ecpt_cpt_singular_name', 'ecpt_cpt_plural_name', 'ecpt_cpt_slug_name', 'ecpt_cpt_dashicon_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('ecpt_cpt_name', 'ecpt_cpt_singular_name', 'ecpt_cpt_plural_name', 'ecpt_cpt_slug_name', 'ecpt_cpt_dashicon_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('ecpt_cpt_name', 'ecpt_cpt_singular_name', 'ecpt_cpt_plural_name', 'ecpt_cpt_slug_name', 'ecpt_cpt_dashicon_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ecpt_cpt_name', 'ecpt_cpt_singular_name', 'ecpt_cpt_plural_name', 'ecpt_cpt_slug_name', 'ecpt_cpt_dashicon_name');

