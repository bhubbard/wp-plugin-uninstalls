-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('main_image', 'mycred_credly_badge_id', 'mycred_credly_connected_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('main_image', 'mycred_credly_badge_id', 'mycred_credly_connected_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('main_image', 'mycred_credly_badge_id', 'mycred_credly_connected_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('main_image', 'mycred_credly_badge_id', 'mycred_credly_connected_email');

