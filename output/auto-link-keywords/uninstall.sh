#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autolinkkw_keyword_map'
wp option delete 'autolinkkw_max_links'
wp option delete 'autolinkkw_nofollow'
wp option delete 'autolinkkw_newtab'

