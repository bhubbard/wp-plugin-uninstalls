-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('superwebshare_version', 'superwebshare_settings', 'superwebshare_floatingsettings', 'superwebshare_floating_settings', 'superwebshare_inline_settings', 'superwebshare_fallback_settings', 'superwebshare_appearance_settings', 'superwebshare_admin_notice_activation', 'superwebshare_admin_notice_upgrade_complete');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_superwebshare_post_inline_active', '_superwebshare_post_floating_active');
DELETE FROM wp_usermeta WHERE meta_key IN ('_superwebshare_post_inline_active', '_superwebshare_post_floating_active');
DELETE FROM wp_termmeta WHERE meta_key IN ('_superwebshare_post_inline_active', '_superwebshare_post_floating_active');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_superwebshare_post_inline_active', '_superwebshare_post_floating_active');

