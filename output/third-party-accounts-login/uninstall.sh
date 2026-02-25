#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tpal_db_version'
wp option delete 'tpal_highlighted'
wp option delete 'tpal_displaytype'

