#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cr_aui_reloaded_multiple_ads'
wp option delete 'cr_aui_reloaded_howmany_ads'
wp option delete 'cr_aui_reloaded_placement_option'
wp option delete 'cr_aui_reloaded_css_text'

