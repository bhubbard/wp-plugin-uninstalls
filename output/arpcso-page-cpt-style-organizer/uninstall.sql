-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arpcso_page_cpt_ct_groups');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_arpcso_page_cpt_ct_group', '_arpcso_page_cpt_ct_type', '_arpcso_page_cpt_ct_role');
DELETE FROM wp_usermeta WHERE meta_key IN ('_arpcso_page_cpt_ct_group', '_arpcso_page_cpt_ct_type', '_arpcso_page_cpt_ct_role');
DELETE FROM wp_termmeta WHERE meta_key IN ('_arpcso_page_cpt_ct_group', '_arpcso_page_cpt_ct_type', '_arpcso_page_cpt_ct_role');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_arpcso_page_cpt_ct_group', '_arpcso_page_cpt_ct_type', '_arpcso_page_cpt_ct_role');

