#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fcbox_enable_cdn'
wp option delete 'fcbox_minify'
wp option delete 'fcbox_cdn_url'
wp option delete 'fcbox_cdn_option'

