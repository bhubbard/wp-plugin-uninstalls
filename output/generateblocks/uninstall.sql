-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shop_page_id', 'generateblocks_dynamic_css_time', 'generateblocks_dynamic_css_posts', 'generateblocks_version', 'generateblocks', 'gb_use_v1_blocks', 'generate_settings', 'generateblocks_do_activation_redirect', 'widget_block', 'generateblocks_pattern_libraries');
DELETE FROM wp_options WHERE option_name LIKE '%-patterns_0';
DELETE FROM wp_options WHERE option_name LIKE '%_0';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_generateblocks_dynamic_css_version', '_generateblocks_reusable_blocks');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_generateblocks_dynamic_css_version', '_generateblocks_reusable_blocks');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_generateblocks_dynamic_css_version', '_generateblocks_reusable_blocks');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_generateblocks_dynamic_css_version', '_generateblocks_reusable_blocks');

