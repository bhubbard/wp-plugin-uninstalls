#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WPTestMonkey_do_shortcode_on_output_buffer'
wp option delete 'WPTestMonkey_show_dashboard_widget'
wp option delete 'WPTestMonkey_current_migration'

