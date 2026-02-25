#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_ready_core_activated'
wp option delete 'ai_ready_llms_disabled'
wp option delete 'ai_ready_llms_sections'
wp option delete 'ai_ready_llms_notes'
wp option delete 'ai_ready_site_title'
wp option delete 'ai_ready_site_summary'
wp option delete 'ai_ready_custom_content'
wp option delete 'ai_ready_last_section_refresh'
wp option delete 'ai_ready_agent_gate_mode'
wp option delete 'ai_ready_agent_gate_custom'
wp option delete 'ai_ready_original_robots_txt'
wp option delete 'ai_ready_last_diagnostics_scan'
wp option delete 'ai_ready_llms_summary'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'social_%'"

# Delete Transients
wp transient delete 'ai_ready_diagnostics_cache'
wp transient delete 'ai_ready_fresh_preview_content'

# Clear Cron Jobs
wp cron event delete 'ai_ready_delayed_refresh'

