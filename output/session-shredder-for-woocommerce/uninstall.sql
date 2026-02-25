-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('session_shredder_base_age_hours', 'session_shredder_hard_timeout_hours', 'session_shredder_bounce_max_pageviews', 'session_shredder_bounce_max_cart_value', 'session_shredder_protect_min_cart_value', 'session_shredder_stats', 'woocommerce_experimental_guest_sessions');

