#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'last_execute'
wp option delete 'smtp_ce-recurrence'

