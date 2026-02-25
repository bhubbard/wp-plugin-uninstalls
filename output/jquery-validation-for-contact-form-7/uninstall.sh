#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jvcf7_install_date'
wp option delete 'jvcf7_current_version'
wp option delete 'jvcf7_show_label_error'
wp option delete 'jvcf7_invalid_field_design'

