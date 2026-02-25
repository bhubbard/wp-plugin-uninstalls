#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eazyHTTPhead_checkbox_frame'
wp option delete 'eazyHTTPhead_checkbox_xss'
wp option delete 'eazyHTTPhead_checkbox_nosniff'

