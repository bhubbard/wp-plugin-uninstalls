#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'andy_show_installation_notice'
wp option delete 'andy_plugin_do_redirect'
wp option delete 'andy_plugin_activation_token'
wp option delete 'andy_injector_public'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'andy_contact_%'"
wp option delete 'andy_injector_open_on_load'
wp option delete 'andy_injector_position'
wp option delete 'andy_injector_widget_size'
wp option delete 'andy_notice_dismissed'
wp option delete 'andy_injector_primary_color'

