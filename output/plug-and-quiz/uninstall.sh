#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugandquiz_domain_id'
wp option delete 'plugandquiz_script_position'
wp option delete 'plugandquiz_modal_position'
wp option delete 'plugandquiz_enable_script'

