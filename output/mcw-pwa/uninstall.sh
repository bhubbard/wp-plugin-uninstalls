#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mcw_enable_assets'
wp option delete 'mcw_enable_service_workers'
wp option delete 'mcw_enable_lazy_load'

