-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_bx-item-features', 'widget_bx-item-actions', 'widget_bx-item-pricing', 'widget_bx-item-slider', 'bxext_fp_installed', 'bxext_dismiss_fp_create', 'sidebars_widgets', 'businessx_ext_widgets_bk', 'jetpack_active_modules');

