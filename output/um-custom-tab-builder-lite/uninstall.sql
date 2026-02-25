-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('um_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_um_ctb_slug', '_um_ctb_icon', '_um_ctb_tab_type', '_um_ctb_private', '_um_ctb_roles_view', '_um_ctb_roles_own', '_um_ctb_type_shortcode', '_um_ctb_type_content', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_um_ctb_slug', '_um_ctb_icon', '_um_ctb_tab_type', '_um_ctb_private', '_um_ctb_roles_view', '_um_ctb_roles_own', '_um_ctb_type_shortcode', '_um_ctb_type_content', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_um_ctb_slug', '_um_ctb_icon', '_um_ctb_tab_type', '_um_ctb_private', '_um_ctb_roles_view', '_um_ctb_roles_own', '_um_ctb_type_shortcode', '_um_ctb_type_content', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_um_ctb_slug', '_um_ctb_icon', '_um_ctb_tab_type', '_um_ctb_private', '_um_ctb_roles_view', '_um_ctb_roles_own', '_um_ctb_type_shortcode', '_um_ctb_type_content', '_wp_page_template');

