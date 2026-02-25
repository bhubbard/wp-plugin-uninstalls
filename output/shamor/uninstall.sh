#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shamor_display_template'
wp option delete 'shamor_display_text'
wp option delete 'shamor_start_time'
wp option delete 'shamor_end_time'
wp option delete 'shamor_cache_status'

