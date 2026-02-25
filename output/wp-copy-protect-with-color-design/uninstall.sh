#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'content_protect_plus_dir'
wp option delete 'javascript-protection-proversion_dir'
wp option delete 'protect_plugin_value_click'
wp option delete 'protect_plugin_value_select_text'
wp option delete 'protect_plugin_value_subject'
wp option delete 'protect_plugin_value_color'
wp option delete 'protect_plugin_value_user'
wp option delete 'protect_plugin_value_admin'
wp option delete 'wp_content_plus_btn_f12'
wp option delete 'javascript_protection_proversion'
wp option delete 'protect_plugin_value_print_no'
wp option delete 'protect_plugin_value_pages'
wp option delete 'protect_plugin_value_posts'
wp option delete 'protect_plugin_value_include'
wp option delete 'protect_plugin_value_include_posts'

