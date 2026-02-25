-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpim_default_data', 'wpim_license', 'wp_inventory_rewrite', 'wpim_full_add_ons', 'wpim_flush_rewrite_rules', 'wpim_messages');

