#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'backdataassup_tables'
wp option delete 'backdataassup_compression'
wp option delete 'backdataassup_lastrun'
wp option delete 'backdataassup_saveOptions'

