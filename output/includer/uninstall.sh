#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'includer_callrail_id'
wp option delete 'includer_clicky_id'
wp option delete 'includer_ga_id'
wp option delete 'includer_ga_enable'
wp option delete 'includer_clicky_enable'
wp option delete 'includer_clickcease_enable'
wp option delete 'includer_callrail_enable'

