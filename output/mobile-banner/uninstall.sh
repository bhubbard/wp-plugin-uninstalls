#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mobilebanner_bgcolour'
wp option delete 'mobilebanner_textcolour'
wp option delete 'mobilebanner_text'
wp option delete 'mobilebanner_url'
wp option delete 'mobilebanner_width'
wp option delete 'mobilebanner_height'
wp option delete 'mobilebanner_chkclose'
wp option delete 'mobilebanner_cookiedays'
wp option delete 'mobilebanner_chknewtab'
wp option delete 'mobilebanner_hiddenpages'

