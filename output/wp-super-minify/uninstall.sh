#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsmy_minified_files'
wp option delete 'wpsmy_review_notice'
wp option delete 'wpsmy_activation_date'
wp option delete 'wpsmy_plugin_version'
wp option delete 'wpsmy_combine_js'
wp option delete 'wpsmy_combine_css'

