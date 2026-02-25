-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmake_advance_user_avatar_settings', 'bp-disable-avatar-uploads', 'wpmake_advance_user_avatar_admin_footer_text_rated', 'wpmake_aua_review_notice_dismissed', 'wpmake_aua_activated', 'wpmake_aua_updated_at');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpmake_advance_user_avatar_attachment_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpmake_advance_user_avatar_attachment_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpmake_advance_user_avatar_attachment_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpmake_advance_user_avatar_attachment_id');

