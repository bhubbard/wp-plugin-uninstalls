-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('posts-bridge-jwt-secret', 'posts-bridge_general', 'posts-bridge_wp', 'posts-bridge_wp-rest', 'posts-bridge_rest-api', 'posts-bridge_rest', 'http-bridge_general', 'posts-bridge_http', '_posts_bridge_detach_queue');

