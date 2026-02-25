-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('theta_carousel_slides', 'theta_carousel_config', 'theta_carousel_admin_view');
DELETE FROM wp_usermeta WHERE meta_key IN ('theta_carousel_slides', 'theta_carousel_config', 'theta_carousel_admin_view');
DELETE FROM wp_termmeta WHERE meta_key IN ('theta_carousel_slides', 'theta_carousel_config', 'theta_carousel_admin_view');
DELETE FROM wp_commentmeta WHERE meta_key IN ('theta_carousel_slides', 'theta_carousel_config', 'theta_carousel_admin_view');

