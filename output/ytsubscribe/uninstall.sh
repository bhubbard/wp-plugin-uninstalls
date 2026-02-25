#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ytSubscribe_channel'
wp option delete 'ytSubscribe_theme'
wp option delete 'ytSubscribe_count'
wp option delete 'ytSubscribe_layout'
wp option delete 'ytSubscribe_dom'
wp option delete 'ytSubscribe_subscribe_text'
wp option delete 'ytSubscribe_customcss'

