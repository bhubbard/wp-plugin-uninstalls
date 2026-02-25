#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seo_copy_do_activation_redirect'
wp option delete 'sc_api_key'
wp option delete 'seocopy_apikey_setting'
wp option delete 'seocopy_language'
wp option delete 'wp_seo_plugins_user_display_name'
wp option delete 'wp_seo_plugins_user_email'

