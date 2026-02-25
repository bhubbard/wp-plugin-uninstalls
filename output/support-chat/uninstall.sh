#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'njt_wp_saio'
wp option delete 'njt_wp_saio_default_apps'
wp option delete 'wpsaio_enable_plugin'
wp option delete 'wpsaio_style'
wp option delete 'wpsaio_tooltip'
wp option delete 'wpsaio_widget_position'
wp option delete 'wpsaio_bottom_distance'
wp option delete 'wpsaio_button_icon'
wp option delete 'wpsaio_button_image'
wp option delete 'wpsaio_button_color'
wp option delete 'wpsaio_show_on_desktop'
wp option delete 'wpsaio_show_on_mobile'
wp option delete 'wpsaio_display_condition'
wp option delete 'wpsaio_includes_pages'
wp option delete 'wpsaio_excludes_pages'
wp option delete 'wpsaio_review_tracked'
wp option delete 'woocommerce_shop_page_id'

