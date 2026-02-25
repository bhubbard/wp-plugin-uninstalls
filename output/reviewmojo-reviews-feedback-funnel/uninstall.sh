#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reviewmojo_stats'
wp option delete 'reviewmojo_settings'
wp option delete 'reviewmojo_funnel_page_id'

