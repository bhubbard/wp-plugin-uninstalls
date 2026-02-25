#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hgc_db_version'
wp option delete 'gravatar_disable_hovercards'
wp option delete 'widget_authors'

