#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rfi_minimum_size'
wp option delete 'rfi_post_types'
wp option delete 'rfi_enforcement_start'

