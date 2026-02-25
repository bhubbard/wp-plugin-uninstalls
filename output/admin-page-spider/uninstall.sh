#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apspider_gutenberg_editmenu_name'
wp option delete 'apspider_radio_editmenu'
wp option delete 'apspider_gutenberg_radio_editmenu'
wp option delete 'apspp_radio_viewposts'

