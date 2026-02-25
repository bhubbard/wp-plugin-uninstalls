#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gbm_disabled_blocks'
wp option delete 'gbm_categories'
wp option delete 'gbm_disabled_patterns'

