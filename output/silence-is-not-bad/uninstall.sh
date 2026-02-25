#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'silenceadminbars'
wp option delete 'silenceupgrade'
wp option delete 'silenceupdates'

