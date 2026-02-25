#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gbvc_mobile_breakpoint'
wp option delete 'gbvc_tablet_breakpoint'
wp option delete 'gbvc_disable_styles_on_non_gutenberg_pages'

