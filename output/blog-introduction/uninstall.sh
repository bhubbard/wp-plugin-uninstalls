#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bintro_enabled'
wp option delete 'bintro_from'
wp option delete 'bintro_settings_heading'
wp option delete 'bintro_settings_content'
wp option delete 'bintro_page_permalink'
wp option delete 'bintro_show_heading'
wp option delete 'bintro_show_content'
wp option delete 'bintro_show_for'
wp option delete 'bintro_show_on_pages'
wp option delete 'bintro_show_on_home'
wp option delete 'bintro_heading_tag'
wp option delete 'bintro_style_intro'
wp option delete 'bintro_size_heading'
wp option delete 'bintro_style_heading'
wp option delete 'bintro_size_content'
wp option delete 'bintro_style_content'
wp option delete 'bintro_at_loop_count'
wp option delete 'bintro_debug'

