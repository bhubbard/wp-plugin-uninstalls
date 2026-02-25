#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sidebar_nav_for_wpbakery_disable_description'
wp option delete 'sidebar_nav_for_wpbakery_compact_view'
wp option delete 'sidebar_nav_for_wpbakery_compact_view_edit_form'
wp option delete 'sidebar_nav_for_wpbakery_responsive_view'
wp option delete 'sidebar_nav_for_wpbakery_page_structure'
wp option delete 'sidebar_nav_for_wpbakery_sidebar_position'
wp option delete 'sidebar_nav_for_wpbakery_color_theme'

