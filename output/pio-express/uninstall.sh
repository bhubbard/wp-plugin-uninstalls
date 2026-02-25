#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pio_express_hide_wpadminbar'
wp option delete 'pio_express_rest_api'
wp option delete 'pio_express_xmlrpc'
wp option delete 'pio_express_rss_feed'
wp option delete 'pio_express_login_logo'
wp option delete 'pio_express_logo_height'
wp option delete 'pio_express_logo_width'
wp option delete 'pio_express_login_bg'
wp option delete 'pio_express_login_bg_type'
wp option delete 'pio_express_login_logo_url'
wp option delete 'pio_express_login_background_color'
wp option delete 'pio_express_login_form_link_color'
wp option delete 'pio_hide_wpadminbar'
wp option delete 'pio_logo_height'
wp option delete 'pio_logo_width'
wp option delete 'pio_login_logo'
wp option delete 'pio_express_plugin_version'

