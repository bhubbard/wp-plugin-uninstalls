#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'calculator_builder_data'
wp option delete 'calchub_notice_status'
wp option delete 'calchub_settings'

