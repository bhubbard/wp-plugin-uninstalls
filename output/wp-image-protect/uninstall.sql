-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpippDisplay_visible_enabled', 'wpippDisplay_watermark_on_size', 'wpippDisplay_watermark_text', 'wpippDisplay_watermark_text_font', 'wpippDisplay_watermark_text_size', 'wpippDisplay_watermark_text_colour', 'wpippDisplay_watermark_text_border_width', 'wpippDisplay_watermark_text_background_colour', 'wpippDisplay_wpipp_watermark_image_url', 'wpippDisplay_watermark_position', 'wpippDisplay_watermark_transparency', 'wpippDisplay_caching_option', 'wpippDisplay_hotlinking_option', 'wpippDisplay_render_option', 'wpippDisplay_watermark_scale', 'wpippDisplay_debug_option', 'wpipp_continue_install', 'wpipp_version', 'wpipp_watermarks_not_set_ignore', 'wpippDisplay_htaccess_option', 'wpipp_mode', 'wpipp_textdomain', 'wpipp_active', 'wpipp_premium_install_ignore');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpipp_exclude_from_watermark');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpipp_exclude_from_watermark');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpipp_exclude_from_watermark');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpipp_exclude_from_watermark');

