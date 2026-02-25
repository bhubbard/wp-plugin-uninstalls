#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scem_parse_content'
wp option delete 'scem_zone'
wp option delete 'scem_posttype'

