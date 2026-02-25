-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('featured_image_pro_settings', 'dnh_dismissed_notices');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('featured_image_pro_premium_nag_ignore', 'featured_image_pro_premium_nag2_ignore', '_wp_attachment_image_alt', 'dnh_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('featured_image_pro_premium_nag_ignore', 'featured_image_pro_premium_nag2_ignore', '_wp_attachment_image_alt', 'dnh_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('featured_image_pro_premium_nag_ignore', 'featured_image_pro_premium_nag2_ignore', '_wp_attachment_image_alt', 'dnh_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('featured_image_pro_premium_nag_ignore', 'featured_image_pro_premium_nag2_ignore', '_wp_attachment_image_alt', 'dnh_dismissed_notices');

