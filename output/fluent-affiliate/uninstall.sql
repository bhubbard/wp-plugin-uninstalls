-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_fa_referral_settings', 'affwp_settings', '_fla_affwp_migrations_status', '_fla_solid_affiliate_migrations_status', 'siteUrl', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_migrations_status';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'locale', 'default_password_nag', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'locale', 'default_password_nag', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'locale', 'default_password_nag', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'locale', 'default_password_nag', '_wp_attachment_image_alt');

