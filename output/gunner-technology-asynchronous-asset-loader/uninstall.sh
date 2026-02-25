#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gt_async_asset_loader_db_version'
wp option delete 'footer_javascript'

