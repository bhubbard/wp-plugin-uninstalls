#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'my_plugin_do_activation_redirect'
wp option delete 'cookie_text_data'
wp option delete 'cookie_text_time'
wp option delete 'cookie_text_url'
wp option delete 'cookie_text_bg'
wp option delete 'cookie_text_brd'

