#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dynweb-options'
wp option delete 'dynweb-meta-options'
wp option delete 'dynweb-version'
wp option delete 'dynweb-pro'

