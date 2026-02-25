#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vipdrv-site-id'
wp option delete 'inject-widget-to-vlp'
wp option delete 'inject-widget-to-vdp'

