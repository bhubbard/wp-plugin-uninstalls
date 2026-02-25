#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easyloginforscala_plugin_do_redirect'
wp option delete 'easyloginforscala_api_key'
wp option delete 'easyloginforscala_api_url'
wp option delete 'easyloginforscala_panel_path'
wp option delete 'easyloginforscala_admin_email'
wp option delete 'easyloginforscala_accountuser'
wp option delete 'easyloginforscala_username'
wp option delete 'easyloginforscala_shortcode_text'
wp option delete 'easyloginforscala_btn_color'
wp option delete 'easyloginforscala_btn_hover'
wp option delete 'easyloginforscala_btn_textcolor'
wp option delete 'easyloginforscala_btn_textsize'

