-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dco_sm_fields', '_dco_sm_post_type', '_dco_sm_show_in_menu', '_dco_sm_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dco_sm_fields', '_dco_sm_post_type', '_dco_sm_show_in_menu', '_dco_sm_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dco_sm_fields', '_dco_sm_post_type', '_dco_sm_show_in_menu', '_dco_sm_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dco_sm_fields', '_dco_sm_post_type', '_dco_sm_show_in_menu', '_dco_sm_description');

