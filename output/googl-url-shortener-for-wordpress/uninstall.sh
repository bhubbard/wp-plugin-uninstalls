#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gg_options_flag'
wp option delete 'gg_open_post'
wp option delete 'gg_open_comment'

