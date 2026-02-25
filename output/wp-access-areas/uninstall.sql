-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpaa_default_post_status', 'wpaa_default_view_cap', 'wpaa_default_edit_cap', 'wpaa_default_comment_cap', 'wpaa_default_behavior', 'wpaa_fallback_page', 'accessareas_version', 'wpaa_enable_assign_cap', 'wpaa_default_caps');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpaa_fallback_page', '_wpaa_post_behavior');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpaa_fallback_page', '_wpaa_post_behavior');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpaa_fallback_page', '_wpaa_post_behavior');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpaa_fallback_page', '_wpaa_post_behavior');

