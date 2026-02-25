-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('umwpuf_description', 'umwpuf_icon', 'umwpuf_post_form', '_can_have_this_tab_roles');
DELETE FROM wp_usermeta WHERE meta_key IN ('umwpuf_description', 'umwpuf_icon', 'umwpuf_post_form', '_can_have_this_tab_roles');
DELETE FROM wp_termmeta WHERE meta_key IN ('umwpuf_description', 'umwpuf_icon', 'umwpuf_post_form', '_can_have_this_tab_roles');
DELETE FROM wp_commentmeta WHERE meta_key IN ('umwpuf_description', 'umwpuf_icon', 'umwpuf_post_form', '_can_have_this_tab_roles');

