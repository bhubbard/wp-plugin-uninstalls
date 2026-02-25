#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ev_purge'
wp option delete 'ev_fields_counter'
wp option delete 'ev_fields_counter_calculator'
wp option delete 'widget_formviewer'

