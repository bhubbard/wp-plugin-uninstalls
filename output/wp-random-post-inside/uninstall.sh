#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wprpi_version'
wp option delete 'wprpi_notice_dismiss'
wp option delete 'wprpi_link_color'
wp option delete 'wprpi_hover_color'
wp option delete 'wprpi_bg_color'
wp option delete 'wprpi_title_color'
wp option delete 'wprpi_font_size'
wp option delete 'wprpi_related_by_cat'
wp option delete 'wprpi_related_by_tag'
wp option delete 'wprpi_supported_cpt'
wp option delete 'wprpi_show_icon'
wp option delete 'wprpi_icon'

