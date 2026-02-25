-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('canvas_editor_css', 'canvas-generated-existing-login-html-template-complete', 'canvas-generated-existing-registration-html-template-complete', 'canvas-generated-existing-css-template-complete', 'woocommerce_custom_orders_table_enabled', 'ml_pnt-push_tags_status', '__canvas_activation_redirect', 'canvas_push_api_down');
DELETE FROM wp_options WHERE option_name LIKE 'canvas-%';
DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('default_title', '_order_tag');
DELETE FROM wp_usermeta WHERE meta_key IN ('default_title', '_order_tag');
DELETE FROM wp_termmeta WHERE meta_key IN ('default_title', '_order_tag');
DELETE FROM wp_commentmeta WHERE meta_key IN ('default_title', '_order_tag');

