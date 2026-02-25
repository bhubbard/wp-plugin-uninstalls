-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpfomo_primary_text', 'wpfomo_secondary_text', 'wpfomo_link_text', 'wpfomo_image_url', 'wpfomo_image_url_src', 'wpfomo_url', 'wpfomo_user_template', 'wpfomo_show_image');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpfomo_ignore_notice110');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpfomo_ignore_notice110');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpfomo_ignore_notice110');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpfomo_ignore_notice110');

