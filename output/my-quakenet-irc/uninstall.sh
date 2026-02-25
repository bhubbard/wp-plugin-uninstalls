#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'new_irc'
wp option delete 'kw_use_forum'
wp option delete 'kw_use_shortcode'
wp option delete 'kw_use_shortcode_no_sidebar'
wp option delete 'kw_special_width1'
wp option delete 'kw_special_width2'
wp option delete 'kw_special_width3'

