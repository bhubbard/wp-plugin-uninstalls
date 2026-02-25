#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'injection_head_start'
wp option delete 'injection_head_end'
wp option delete 'injection_footer_start'
wp option delete 'injection_footer_end'

