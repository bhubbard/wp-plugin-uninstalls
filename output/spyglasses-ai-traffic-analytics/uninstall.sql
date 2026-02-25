-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spyglasses_api_key', 'spyglasses_debug_mode', 'spyglasses_auto_sync_patterns', 'spyglasses_last_pattern_sync', 'spyglasses_block_ai_model_trainers', 'spyglasses_agent_patterns');

