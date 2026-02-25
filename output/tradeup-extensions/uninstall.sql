-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_bx-item-features', 'widget_bx-item-actions', 'widget_bx-item-slider', 'tuext_fp_installed', 'tuext_dismiss_fp_create', 'sidebars_widgets', 'tradeup_ext_widgets_bk', 'jetpack_active_modules');

