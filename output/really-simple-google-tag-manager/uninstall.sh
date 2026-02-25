#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'google_tag_manager_id'
wp option delete 'simple_googletag_diagnostic_data_notice'
wp option delete 'simple_googletag_diagnostic_data_agreed'

