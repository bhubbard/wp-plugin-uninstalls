-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enable_top_bar', 'fixed_top_bar', 'display_contact_number', 'display_email_address', 'top_bar_height', 'top_bar_color', 'contact_number', 'contact_email', 'text_color', 'show_admin_bar', 'button_text', 'acction_link');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('social_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('social_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('social_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('social_link');

