#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fatcxe_options'
wp option delete 'fatcxe_next_export'
wp option delete 'fatcxe_last_export'
wp option delete 'fatcxe_version'
wp option delete 'fatcxe_exports_log'

