#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rh_hidedash_options'
wp option delete 'rh_hidedash_links_options'
wp option delete 'rh_insert_php'

