-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('redirect_after_login', 'name', 'bg_custom_color', 'text_custom_color', 'bo_custom_color', 'link_custom_color', 'pop_custom_color', 'label_custom_color', 'add_telephone_number', 'redirect_after_logout');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_contact_no');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_contact_no');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_contact_no');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_contact_no');

