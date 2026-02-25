#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qb_mm_enabled'
wp option delete 'qb_mm_style'
wp option delete 'qb_mm_title'
wp option delete 'qb_mm_message'
wp option delete 'qb_mm_logo_id'

