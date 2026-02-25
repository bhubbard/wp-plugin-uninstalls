#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpp_text_intro'
wp option delete 'cpp_hide_prefix'
wp option delete 'cpp_prefix_protected'
wp option delete 'cpp_prefix_private'
wp option delete 'cpp_use_default_form'
wp option delete 'cpp_label_text'
wp option delete 'cpp_button_text'
wp option delete 'cpp_button_y_padding'
wp option delete 'cpp_button_x_padding'

