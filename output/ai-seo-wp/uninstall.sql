-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpseoai_log', 'wpseoai_debug', 'wpseoai_credit', 'wpseoai_host', 'wpseoai_subscription_id', 'wpseoai_secret', 'wpseoai_llm', 'wpseoai_mode', 'wpseoai_return_host');

