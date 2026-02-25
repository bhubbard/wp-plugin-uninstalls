#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bprn_options'
wp option delete 'bprn_display_name_options'
wp option delete 'bprn_members_options'
wp option delete 'bprn_search_options'

