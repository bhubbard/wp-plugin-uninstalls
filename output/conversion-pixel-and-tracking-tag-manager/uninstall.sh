#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpttm_page_type'
wp option delete 'cpttm_page_date'
wp option delete 'cpttm_page_author'
wp option delete 'cpttm_taxonomies'
wp option delete 'cpttm_events_triggers'
wp option delete 'cpttm_head_script'
wp option delete 'cpttm_body_script'
wp option delete 'cpttm_footer_script'
wp option delete 'cpttm_head_script_enabled'
wp option delete 'cpttm_body_script_enabled'
wp option delete 'cpttm_footer_script_enabled'

