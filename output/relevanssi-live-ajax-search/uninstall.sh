#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'relevanssi_min_word_length'
wp option delete 'relevanssi_live_search_last_update'
wp option delete 'relevanssi_live_search_version'

