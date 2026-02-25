#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rh_transition'
wp option delete 'rh_duration'
wp option delete 'rh_transition_type'

