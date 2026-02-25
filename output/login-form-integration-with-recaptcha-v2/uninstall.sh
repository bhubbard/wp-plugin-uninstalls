#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'secret_key'
wp option delete 'site_key'

