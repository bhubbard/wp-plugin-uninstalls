#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'keymanwebheader'
wp option delete 'keymanwebdashboard'
wp option delete 'keymanwebcomments'

