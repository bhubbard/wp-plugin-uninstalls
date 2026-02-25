#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gra4_plugin_do_activation_redirect'
wp option delete 'gra4_version'
wp option delete 'gra4_dom_tree'
wp option delete 'gra4_dom_node_id'
wp option delete 'gra4_margin_none'
wp option delete 'gra4_set_width'
wp option delete 'gra4_delta_width'
wp option delete 'gra4_set_custom_template'
wp option delete 'gra4_reset_page'
wp option delete 'gra4_theme_name'
wp option delete 'rewrite_rules'

