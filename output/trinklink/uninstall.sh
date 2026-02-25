#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trinklink_aff_id'
wp option delete 'trinklink_aff_sub'
wp option delete 'trinklink_source'
wp option delete 'trinklink_excluded'

