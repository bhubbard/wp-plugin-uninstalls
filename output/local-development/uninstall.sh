#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'local_dev_extras'
wp option delete 'local_development'
wp option delete 'local_dev_plugins'
wp option delete 'local_dev_themes'

