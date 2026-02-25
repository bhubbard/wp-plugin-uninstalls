#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wdstm_order_filter'
wp option delete 'wdstm-activate-plugin'
wp option delete 'wdstm_default_theme'
wp option delete 'wdstm_sign_db_version'

