-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('waint_token_expiry', 'waint_token', 'waint_refresh_token', 'waint_last_allegro_orders_processed', 'waint_delayed_settings_error', 'waint_options', 'waint_code_verifier', 'waint_state');

