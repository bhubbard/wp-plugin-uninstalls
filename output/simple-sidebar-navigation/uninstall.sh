#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ssn_general_settings'
wp option delete 'dropdown_css'
wp option delete 'custom_css'
wp option delete 'blog_post_links'
wp option delete 'target_attr'
wp option delete 'simple_sidenav'
wp option delete 'widget_simple_sidenav'
wp option delete 'sidebars_widgets'

