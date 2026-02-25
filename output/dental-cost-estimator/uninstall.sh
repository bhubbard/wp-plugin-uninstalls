#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dentcoes_enabled_treatment'
wp option delete 'dentcoes_selected_currency'
wp option delete 'dce_enabled_treatment'
wp option delete 'dce_selected_currency'

