#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpss_data'
wp option delete 'current_theme'
wp option delete 'woocommerce_wpss_upload_dir'
wp option delete 'wpss_options'

