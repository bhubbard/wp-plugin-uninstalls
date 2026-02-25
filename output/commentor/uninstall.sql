-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('commentor_display_count', 'commentor_admin_display_name', 'commentor_form_direction', 'commentor_primary_color', 'commentor_box_background', 'commentor_box_padding', 'commentor_distinguish_the_author');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('likes');
DELETE FROM wp_usermeta WHERE meta_key IN ('likes');
DELETE FROM wp_termmeta WHERE meta_key IN ('likes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('likes');

