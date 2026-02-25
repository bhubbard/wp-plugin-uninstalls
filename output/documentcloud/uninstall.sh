#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'documentcloud_default_height'
wp option delete 'documentcloud_default_width'
wp option delete 'documentcloud_full_width'

