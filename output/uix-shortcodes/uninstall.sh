#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uix_sc_opt_cssnewcode'
wp option delete 'uix_sc_opt_map_api'
wp option delete 'uix_sc_opt_icontype'
wp option delete 'uix_sc_opt_style'

