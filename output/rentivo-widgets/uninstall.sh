#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rentivoSettings'
wp option delete 'rentivoWidgetsGeneral'
wp option delete 'dataBridgeIncluded'
wp option delete 'rentivoWidgets'
wp option delete 'dataBridgeOption'

