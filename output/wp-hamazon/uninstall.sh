#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hamazon_option_updated'
wp option delete 'hamazon_post_types'
wp option delete 'hamazon_load_css'
wp option delete 'wp_tmkm_admin_options'

