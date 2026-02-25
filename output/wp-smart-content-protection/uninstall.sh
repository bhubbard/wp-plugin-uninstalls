#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpscp_right_click'
wp option delete 'wpscp_copy'
wp option delete 'wpscp_cut'
wp option delete 'wpscp_paste'

