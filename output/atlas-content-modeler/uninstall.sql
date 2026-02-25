-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('atlas_content_modeler_usage_tracking', 'atlas_content_modeler_post_types', 'atlas_content_modeler_taxonomies', 'atlas_content_modeler_current_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'acm_hide_feedback_banner', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'acm_hide_feedback_banner', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'acm_hide_feedback_banner', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'acm_hide_feedback_banner', '_thumbnail_id');

