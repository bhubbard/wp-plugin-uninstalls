-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('njt_wp_saio', 'njt_wp_saio_default_apps', 'wpsaio_enable_plugin', 'wpsaio_style', 'wpsaio_tooltip', 'wpsaio_widget_position', 'wpsaio_bottom_distance', 'wpsaio_button_icon', 'wpsaio_button_image', 'wpsaio_button_color', 'wpsaio_show_on_desktop', 'wpsaio_show_on_mobile', 'wpsaio_display_condition', 'wpsaio_includes_pages', 'wpsaio_excludes_pages', 'wpsaio_review_tracked', 'woocommerce_shop_page_id');

