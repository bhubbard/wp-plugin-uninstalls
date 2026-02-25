#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yandexid_app_client_id'
wp option delete 'yandexid_type_selection'
wp option delete 'suggest_button_view'
wp option delete 'suggest_parent_id'
wp option delete 'suggest_button_theme'
wp option delete 'suggest_button_size'
wp option delete 'suggest_button_border_radius'
wp option delete 'suggest_color_bg_base'
wp option delete 'suggest_color_bg_hovered'
wp option delete 'suggest_color_border_base'
wp option delete 'suggest_color_border_hovered'
wp option delete 'suggest_border_thickness'
wp option delete 'yandexid_app_client_secret'
wp option delete 'yandexid_role_new_user'
wp option delete 'scope_login_default_phone_field'
wp option delete 'scope_login_birthday_field'

