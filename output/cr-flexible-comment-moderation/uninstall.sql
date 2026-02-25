-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cr_flexible_comment_moderation_system_mode', '_cr_flexible_comment_moderation_overide_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cr_flexible_comment_moderation_system_mode', '_cr_flexible_comment_moderation_overide_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cr_flexible_comment_moderation_system_mode', '_cr_flexible_comment_moderation_overide_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cr_flexible_comment_moderation_system_mode', '_cr_flexible_comment_moderation_overide_mode');

