-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lettermint_api_token', 'lettermint_from_email', 'lettermint_from_name', 'lettermint_force_email', 'lettermint_force_from_name', 'lettermint_enable_logs', 'lettermint_show_advanced', 'lettermint_route_slug', 'lettermint_tag', 'lettermint_force_html', 'lettermint_logs');

