-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tradejournal_merge_accounts', 'tradejournal_merge_time_tolerance', 'tradejournal_merge_round_to_minute', 'tradejournal_instrument_multipliers', 'tradejournal_setups');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('trade_repeater');
DELETE FROM wp_usermeta WHERE meta_key IN ('trade_repeater');
DELETE FROM wp_termmeta WHERE meta_key IN ('trade_repeater');
DELETE FROM wp_commentmeta WHERE meta_key IN ('trade_repeater');

