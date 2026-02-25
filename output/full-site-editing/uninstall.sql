-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('footercredit', 'active_sitewide_plugins', 'site_intent', 'launchpad_screen', 'has_never_published_post', 'was_created_with_blank_canvas_design', 'has_seen_seller_celebration_modal', 'sharing_modal_dismissed', 'wpcom_sharing_modal_dismissed', 'has_seen_video_celebration_modal', 'jetpack_options');
DELETE FROM wp_options WHERE option_name LIKE 'fse_sideloaded_image_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('newspack_post_subtitle', 'newspack_sponsor_sponsorship_scope', 'newspack_sponsor_url', 'newspack_supporter_url', '_sideloaded_url', '_wp_attachment_image_alt', 'has_seen_whats_new_modal', 'wpcom_block_editor_nux_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('newspack_post_subtitle', 'newspack_sponsor_sponsorship_scope', 'newspack_sponsor_url', 'newspack_supporter_url', '_sideloaded_url', '_wp_attachment_image_alt', 'has_seen_whats_new_modal', 'wpcom_block_editor_nux_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('newspack_post_subtitle', 'newspack_sponsor_sponsorship_scope', 'newspack_sponsor_url', 'newspack_supporter_url', '_sideloaded_url', '_wp_attachment_image_alt', 'has_seen_whats_new_modal', 'wpcom_block_editor_nux_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('newspack_post_subtitle', 'newspack_sponsor_sponsorship_scope', 'newspack_sponsor_url', 'newspack_supporter_url', '_sideloaded_url', '_wp_attachment_image_alt', 'has_seen_whats_new_modal', 'wpcom_block_editor_nux_status');

