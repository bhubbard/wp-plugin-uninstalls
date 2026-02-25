#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'parkflow_color'
wp option delete 'parkflow_tenant'
wp option delete 'parkflow_parking'
wp option delete 'parkflow_locale'

