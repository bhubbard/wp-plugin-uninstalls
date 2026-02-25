#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'currency_field'
wp option delete 'title_field'
wp option delete 'charts_field'
wp option delete 'chart_field'

