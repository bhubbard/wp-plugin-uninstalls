#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twoptions'
wp option delete 'twitchers_options'
wp option delete 'twitchers_poster'
wp option delete 'twitchers_markers'
wp option delete 'twitchers_postset'

