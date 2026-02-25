#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'incrbufo_dismiss_notice'
wp option delete 'incrbufo_first_activate'
wp option delete 'incrbufo_settings'
wp option delete 'incrbufo_version'

