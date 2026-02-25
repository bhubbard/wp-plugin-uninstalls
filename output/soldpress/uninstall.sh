#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sc-url'
wp option delete 'sc-username'
wp option delete 'sc-password'
wp option delete 'sc-template'

