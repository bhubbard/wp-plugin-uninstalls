#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nabwrap_page'
wp option delete 'nabwrap_addlink'
wp option delete 'nabwrap_url'
wp option delete 'nabwrap_width'
wp option delete 'nabwrap_height'
wp option delete 'nabwrap_border'
wp option delete 'nabwrap_scroll'

