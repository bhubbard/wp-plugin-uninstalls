-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('extra_fee_option_enabled', 'extra_fee_option_label', 'extra_fee_option_cost', 'extra_fee_option_type', 'extra_fee_option_taxable', 'extra_fee_option_minorder');

