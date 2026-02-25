#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'max_entries'
wp option delete 'srw_style'
wp option delete 'srw_link_target'

