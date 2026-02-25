#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'isd-user'
wp option delete 'isd-password'
wp option delete 'isd-apiid'

