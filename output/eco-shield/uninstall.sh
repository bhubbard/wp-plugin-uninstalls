#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpes_options'
wp option delete 'wpes_total_plays'
wp option delete 'wpes_carbon_saved'

