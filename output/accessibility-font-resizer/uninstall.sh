#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'afr_elems'
wp option delete 'afr_debug'
wp option delete 'afr_cookie_delay'
wp option delete 'afr_normal'
wp option delete 'afr_large'
wp option delete 'afr_xlarge'

