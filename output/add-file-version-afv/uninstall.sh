#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'afv_auto_ver'
wp option delete 'afv_ver_target_file'
wp option delete 'afv_manual_ver'
wp option delete 'afv_manual_ver_input'

