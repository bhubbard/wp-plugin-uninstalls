-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('risbl_slider_customizr_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('risbl_prefix_title_id', 'risbl_slide_order_index');
DELETE FROM wp_usermeta WHERE meta_key IN ('risbl_prefix_title_id', 'risbl_slide_order_index');
DELETE FROM wp_termmeta WHERE meta_key IN ('risbl_prefix_title_id', 'risbl_slide_order_index');
DELETE FROM wp_commentmeta WHERE meta_key IN ('risbl_prefix_title_id', 'risbl_slide_order_index');

