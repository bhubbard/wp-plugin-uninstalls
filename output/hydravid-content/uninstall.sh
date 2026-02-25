#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'myplug_version'
wp option delete 'hydravid_site'
wp option delete 'username'
wp option delete 'categories'

