#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smart_footnotes_style'
wp option delete 'smart_footnotes_popup_style'
wp option delete 'smart_footnotes_heading'
wp option delete 'smart_footnotes_return_text'
wp option delete 'smart_footnotes_custom_css'
wp option delete 'smart_footnotes_show_list'

