-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_ready_core_activated', 'ai_ready_llms_disabled', 'ai_ready_llms_sections', 'ai_ready_llms_notes', 'ai_ready_site_title', 'ai_ready_site_summary', 'ai_ready_custom_content', 'ai_ready_last_section_refresh', 'ai_ready_agent_gate_mode', 'ai_ready_agent_gate_custom', 'ai_ready_original_robots_txt', 'ai_ready_last_diagnostics_scan', 'ai_ready_llms_summary', 'ai_ready_diagnostics_cache', 'ai_ready_fresh_preview_content');
DELETE FROM wp_options WHERE option_name LIKE '%_url';
DELETE FROM wp_options WHERE option_name LIKE 'social_%';

