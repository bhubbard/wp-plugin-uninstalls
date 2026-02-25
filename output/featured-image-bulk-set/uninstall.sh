#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fibs_automated'
wp option delete 'fibs_dim'
wp option delete 'fibs_override'
wp option delete 'fibs_firstlast'
wp option delete 'fibs_drafts'

