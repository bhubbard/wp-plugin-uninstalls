#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mmwd_remove_atc_activated'
wp option delete 'mmwd_remove_atc'
wp option delete 'mmwd_remove_price'

