-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpb_js_google_fonts_subsets', 'woocommerce_cart_redirect_after_add');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpbforwpbakery_tmpl_layout', 'wpbforwpbakery_selectcategory_layout', '_wpb_post_custom_css', '_wpb_shortcodes_custom_css', '_selectproduct_layout');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpbforwpbakery_tmpl_layout', 'wpbforwpbakery_selectcategory_layout', '_wpb_post_custom_css', '_wpb_shortcodes_custom_css', '_selectproduct_layout');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpbforwpbakery_tmpl_layout', 'wpbforwpbakery_selectcategory_layout', '_wpb_post_custom_css', '_wpb_shortcodes_custom_css', '_selectproduct_layout');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpbforwpbakery_tmpl_layout', 'wpbforwpbakery_selectcategory_layout', '_wpb_post_custom_css', '_wpb_shortcodes_custom_css', '_selectproduct_layout');

