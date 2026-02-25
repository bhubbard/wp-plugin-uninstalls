-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpat_api_key', 'wpat_capital_strategy_cat', 'wpat_capital_strategy_tag', 'wpat_ignore_prior', 'wpat_activation_admin_notice_transient');

