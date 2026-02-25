#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kasuga_scbc_button_top'
wp option delete 'kasuga_scbc_button_right'
wp option delete 'kasuga_scbc_label_copy'
wp option delete 'kasuga_scbc_label_copied'
wp option delete 'kasuga_scbc_button_size'
wp option delete 'kasuga_scbc_button_bg_color'
wp option delete 'kasuga_scbc_button_text_color'
wp option delete 'kasuga_scbc_button_bg_transparent'
wp option delete 'kasuga_scbc_enable_max_height'
wp option delete 'kasuga_scbc_max_height'
wp option delete 'kasuga_scbc_custom_styles'
wp option delete 'kasuga_scbc_enable_linenumbers'

