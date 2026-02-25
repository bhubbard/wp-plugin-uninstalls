-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('udp_agent_allow_tracking', 'udp_agent_tracking_msg_last_shown_at', 'udp_installed_agents', 'udp_active_agent_basename', 'woocommerce_enable_shipping_calc', 'woocommerce_tax_display_cart', 'woocommerce_tax_total_display');

