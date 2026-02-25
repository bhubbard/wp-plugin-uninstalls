#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slider_templates_logged_in'
wp option delete 'slider_templates_is_premium'
wp option delete 'slider_templates_email'
wp option delete 'slider_templates_connection_agree'
wp option delete 'slider_templates_password'
wp option delete 'slider_templates_all_templates'
wp option delete 'slider_templates_download_history'

