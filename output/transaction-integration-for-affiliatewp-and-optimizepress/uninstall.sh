#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tiaop_expiration_value'
wp option delete 'tiaop_expiration_units'
wp option delete 'tiaop_retain_history_value'
wp option delete 'tiaop_retain_history_units'

