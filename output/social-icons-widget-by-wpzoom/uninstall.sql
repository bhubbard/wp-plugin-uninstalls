-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_block', 'wpz_social_icons_dismiss_admin_notices');
DELETE FROM wp_options WHERE option_name LIKE 'wpz_social_icons_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpzoom_sharing_show_on_front', 'wpzoom_wpz_dismiss_black_friday_banner', '_shortcode_item_wpzoom-icons', '_wpzoom_sharing_position', '_wpzoom_sharing_post_types');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpzoom_sharing_show_on_front', 'wpzoom_wpz_dismiss_black_friday_banner', '_shortcode_item_wpzoom-icons', '_wpzoom_sharing_position', '_wpzoom_sharing_post_types');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpzoom_sharing_show_on_front', 'wpzoom_wpz_dismiss_black_friday_banner', '_shortcode_item_wpzoom-icons', '_wpzoom_sharing_position', '_wpzoom_sharing_post_types');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpzoom_sharing_show_on_front', 'wpzoom_wpz_dismiss_black_friday_banner', '_shortcode_item_wpzoom-icons', '_wpzoom_sharing_position', '_wpzoom_sharing_post_types');

