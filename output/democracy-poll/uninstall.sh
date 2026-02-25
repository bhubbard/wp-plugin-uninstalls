#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'democracy_version'
wp option delete 'democracy_css'
wp option delete 'democracy_migrated'
wp option delete 'poll_allowtovote'
wp option delete 'democracy_l10n'

