#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'option_use_showpass_beta'
wp option delete 'option_use_showpass_demo'
wp option delete 'option_showpass_access_token'
wp option delete 'option_organization_id'
wp option delete 'option_widget_color'
wp option delete 'option_showpass_default_button_class'
wp option delete 'option_keep_shopping'
wp option delete 'option_show_widget_description'
wp option delete 'option_disable_verify_ssl'
wp option delete 'format_date'
wp option delete 'format_time'
wp option delete 'option_theme_dark'

