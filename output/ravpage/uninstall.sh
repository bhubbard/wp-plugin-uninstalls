#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jal_db_version'
wp option delete 'ravpageLastTimestampMajor'
wp option delete 'ravpageLastTimestampMinor'
wp option delete 'ravpageKey'

