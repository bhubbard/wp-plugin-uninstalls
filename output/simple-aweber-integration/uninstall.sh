#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aweber_style'
wp option delete 'aweber_js'
wp option delete 'aweber_post'
wp option delete 'aweber_page'
wp option delete 'aweber_post_start'
wp option delete 'aweber_page_start'
wp option delete 'aweber_priority'

