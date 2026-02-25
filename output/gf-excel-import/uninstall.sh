#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gfxl_import_option_separator'
wp option delete 'gfxl_import_option_encoding'
wp option delete 'gfxl_import_option_adminonly'
wp option delete 'gfxl_import_option_clearing'

