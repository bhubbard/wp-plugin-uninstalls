#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dbprefix_old_dbprefix'
wp option delete 'dbprefix_new'

