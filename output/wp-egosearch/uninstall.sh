#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpes_consumer_key'
wp option delete 'wpes_consumer_secret'
wp option delete 'wpes_dissearched'
wp option delete 'wpes_count'

