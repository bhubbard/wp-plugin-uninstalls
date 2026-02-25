#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tlap_add_analytics_option_main'
wp option delete 'tlap_add_analytics_option_counters'
wp option delete 'tlap_add_analytics_option_metrica'
wp option delete 'tlap_add_analytics_option_speedup'

