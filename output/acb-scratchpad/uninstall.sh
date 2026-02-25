#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acb_sp_php_code'
wp option delete 'acb_sp_php_submit_button_type'
wp option delete 'acb_sp_php_installed'
wp option delete 'acb_sp_php_installed_enable'
wp option delete 'acb_sp_js_code'
wp option delete 'acb_sp_js_submit_button_type'
wp option delete 'acb_sp_js_result'
wp option delete 'acb_sp_js_installed'
wp option delete 'acb_sp_js_installed_enable'
wp option delete 'acb_sp_css_code'
wp option delete 'acb_sp_css_submit_button_type'
wp option delete 'acb_sp_css_installed'
wp option delete 'acb_sp_css_installed_enable'
wp option delete 'acb_sp_css_installed_type'

